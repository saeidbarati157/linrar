/* -*- Mode: C; c-basic-offset:4 ; indent-tabs-mode:nil ; -*- */
/*
 * See COPYRIGHT in top-level directory.
 */

#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <poll.h>
#include <assert.h>

#include "common.h"

static void handle_error(const char *msg);
static float get_power();

int main(int argc, char *argv[])
{
    int sockfd, port;
    struct sockaddr_in my_addr;
    struct sockaddr_in abt_addr;
    socklen_t addrlen;
    struct pollfd abt_pfd;

    char send_buf[SEND_BUF_LEN];
    char recv_buf[RECV_BUF_LEN];
    int quit = 0;
    int abt_alive = 0;
    int n, ret;
    float history_power,total_power,power_cap;
	
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <port>\n", argv[0]);
        exit(1);
    }
    port = atoi(argv[1]);
    power_cap = 100;
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) handle_error("ERROR: socket");

    bzero((char *)&my_addr, sizeof(my_addr));
    my_addr.sin_family = AF_INET;
    my_addr.sin_addr.s_addr = INADDR_ANY;
    my_addr.sin_port = htons(port);
    ret = bind(sockfd, (struct sockaddr *)&my_addr, sizeof(my_addr));
    if (ret < 0) handle_error("ERROR: bind");

    while (!quit) {
        int core_num;
        printf("Waiting for connection...\n");
        
        listen(sockfd, 5);
        addrlen = sizeof(abt_addr);
        abt_pfd.fd = accept(sockfd, (struct sockaddr *)&abt_addr, &addrlen);
        if (abt_pfd.fd < 0) handle_error("ERROR: accept");
        abt_pfd.events = POLLIN | POLLRDHUP;
        abt_alive = 1;

        printf("Client connected...\n\n");

        while (abt_alive) {
            float current_power;
            current_power = get_power();
            history_power= current_power;
            /* judging for convergence */
            while ((((power_cap >current_power)&&(power_cap>history_power))||((power_cap < current_power)&&(power_cap < history_power)))&&abt_alive){
                if (current_power > power_cap){
                    bzero(send_buf, SEND_BUF_LEN);
                    send_buf[0] = 'd';
                }
                else{
                    bzero(send_buf, SEND_BUF_LEN);
                    send_buf[0] = 'i';
                }
                n = write(abt_pfd.fd, send_buf, strlen(send_buf));
                assert(n == strlen(send_buf));
                bzero(recv_buf, RECV_BUF_LEN);
                while (1) {
                    ret = poll(&abt_pfd, 1, 10);
                    if (ret == -1) {
                        handle_error("ERROR: poll");
                    } else if (ret != 0) {
                        if (abt_pfd.revents & POLLIN) {
                            n = read(abt_pfd.fd, recv_buf, RECV_BUF_LEN);
                            if (n < 0) handle_error("ERROR: read");
                            printf("Response: %s\n\n", recv_buf);
                            sscanf(recv_buf, "done (%d)", &core_num);
                            
                        }
                        if (abt_pfd.revents & POLLRDHUP) {
                            abt_alive = 0;
                            printf("Client disconnected...\n");
                            break;
                        }
                    abt_pfd.revents = 0;
                    break;
                    }
                }
                history_power = current_power;
                current_power = get_power();
                /* check boundry condition*/
                if ((core_num == 40)||(core_num == 1)){
                    break;
                
                }
            }
            abt_alive=0;
            if (current_power > history_power){
                bzero(send_buf, SEND_BUF_LEN);
                send_buf[0] = 'd';
                n = write(abt_pfd.fd, send_buf, strlen(send_buf));
                assert(n == strlen(send_buf));
                while (1) {
                    ret = poll(&abt_pfd, 1, 10);
                    if (ret == -1) {
                        handle_error("ERROR: poll");
                    } else if (ret != 0) {
                            if (abt_pfd.revents & POLLIN) {
                            n = read(abt_pfd.fd, recv_buf, RECV_BUF_LEN);
                            if (n < 0) handle_error("ERROR: read");

                            printf("Response: %s\n\n", recv_buf);
                            printf("core number adjustment finished\n");

                        }
                        if (abt_pfd.revents & POLLRDHUP) {
                            abt_alive = 0;
                            printf("Client disconnected...\n");
                            break;
                        }
                    abt_pfd.revents = 0;
                    break;
                    }
                }

            }
            current_power = get_power();
            printf("currnet power = %f\n",current_power);
        }
    quit = 1;
    close(abt_pfd.fd);
    }

    close(sockfd);

    return EXIT_SUCCESS;
}

static void handle_error(const char *msg)
{
    perror(msg);
    exit(EXIT_FAILURE);
}
/*get package power through msr */
static float get_power()
{
    FILE *fp;
    float current_power;
//    system("./RaplPowerMonitor_onetime > power.txt");
   // system("./libmsr/libmsr_get > power2.txt");

    fp= fopen("power2.txt","r");
    if (fp==NULL) handle_error("ERROR:opening file failed");
    
    char pkg_number[32];
    char pkg_str[32];
    float pkg_watts;
    char elapsed_str[32];
    float elapsed_time;
    char time_stamp_str[32];
    float time_stamp;

    int total_pkg_numbers=2;
    int counter=0;

    while(fscanf(fp, "%s %s %f %s %f %s %f\n",pkg_number, pkg_str,&pkg_watts,elapsed_str,&elapsed_time,time_stamp_str ,&time_stamp) !=EOF)
    {
        counter++;
        current_power+=pkg_watts;

        //printf("pkg_watts = %f\n",pkg_watts);

        if (counter == total_pkg_numbers){
            start_power = current_power;
          //  printf("currnet power = %f\n",current_power);
            current_power = 0;
        }


    }

    finish_power = current_power;
    //fscanf(fp,"%f",&current_power);
    //printf("%f\n",finish_power - start_power);

    fclose(fp);
    return (finish_power - start_power);
}
