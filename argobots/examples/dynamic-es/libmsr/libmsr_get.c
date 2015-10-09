#include <unistd.h>
#include <sched.h>
#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>
#include "/local/saeid/libmsr/include/cpuid.h"
#include "/local/saeid/libmsr/include/msr_core.h"
#include "/local/saeid/libmsr/include/msr_rapl.h"
#include "/local/saeid/libmsr/include/msr_thermal.h"
#include "/local/saeid/libmsr/include/msr_counters.h"
#include "/local/saeid/libmsr/include/msr_clocks.h"
#include "/local/saeid/libmsr/include/profile.h"
#include "/local/saeid/libmsr/include/msr_misc.h"
#include "/local/saeid/libmsr/include/msr_turbo.h"
#ifdef MPI
#include <mpi.h>
#endif

#define MASK_RANGE(m,n) ((((uint64_t)1<<((m)-(n)+1))-1)<<(n))
#define MASK_VAL(x,m,n) (((uint64_t)(x)&MASK_RANGE((m),(n)))>>(n))

uint64_t pp_policy = 0x5;
struct rapl_limit l1, l2, l3, l4;

void
get_limits()
{
	int i;
    uint64_t pp_result;
    static uint64_t sockets = 0;
    if (!sockets)
    {
        core_config(NULL, NULL, &sockets, NULL);
    }
    fprintf(stderr, "\nGetting limits...\n");
	for(i=0; i<sockets; i++){
        fprintf(stdout, "\nSocket %d:\n", i);
        printf("PKG\n");
        get_pkg_rapl_limit(i, &l1, &l2);
		dump_rapl_limit(&l1, stdout);
		dump_rapl_limit(&l2, stdout);
        printf("DRAM\n");
        get_dram_rapl_limit(i, &l3);
        dump_rapl_limit(&l3, stdout);
        printf("PP\n");
        get_pp_rapl_limit(i, &l4, NULL);
        dump_rapl_limit(&l4, stdout);
        get_pp_rapl_policies(i, &pp_result, NULL);
        printf("PP policy\n%ld\n", pp_result);
	}
}

// NOTE: to use this, compile a NAS parallel benchmark of your choice and modify the path below
//       you will have to compile with the -D_GNU_SOURCE flag for setaffinity 
#define MEMTEST 1

#ifdef MEMTEST
char * args[] = {"mg.B.1"};
const char path[] = "/g/g19/walker91/NPB3.3.1/NPB3.3-MPI/bin/mg.B.1";
#endif
//#ifdef PROCTEST
//char *args[] = {"ep.B.24"};
//const char path[] = "/g/g19/walker91/NPB3.3.1/NPB3.3-MPI/bin/ep.B.24";
//#endif

// We use 24 for Catalyst, (2 sockets * 12 cores)
#define NPROCS 24 

void rapl_r_test(struct rapl_data ** rd, FILE *writeFile)
{
    struct rapl_data * r1 = NULL;
    struct rapl_data * r2 = NULL;

    //fprintf(stdout, "\nNEW\n\n");
    //r1 = &((*rd)[0]);
    //r2 = &((*rd)[1]);
    poll_rapl_data(0, &r1);
    poll_rapl_data(1, &r2);
    //poll_rapl_data(0, NULL);
    //poll_rapl_data(1, NULL);
    printf("pkg1=   ");
    dump_rapl_data(r1, writeFile);
    printf("pkg2=   ");
    dump_rapl_data(r2, writeFile);

#ifdef MEMTEST
   unsigned nprocs = NPROCS;
   pid_t pid[NPROCS];
   int status[NPROCS];
   cpu_set_t cpuselect;

   int i;
   for (i = 0; i < nprocs; i++)
   {   
       CPU_ZERO(&cpuselect);
       CPU_SET(i, &cpuselect);
       pid[i] = fork();
       if (pid[i] == 0)
       {   
           // this is just testing on 1 node 
           sched_setaffinity(0, sizeof(cpu_set_t), &cpuselect);
           //fprintf(stderr, "executing stress test\n");
           execve(path, args, NULL);
           exit(1);
       }
    }
   // fprintf(stderr, "waiting for test to complete\n");
    for (i = 0; i < nprocs; i++)
    {   
        wait(&status[i]);
    }
#endif
#ifndef MEMTEST
    sleep(1);
#endif


    poll_rapl_data(0, &r1);
    poll_rapl_data(1, &r2);
    printf("pkg1=   ");
    dump_rapl_data(r1, writeFile);
    printf("pkg2=   ");
    dump_rapl_data(r2, writeFile);
}

int main(int argc, char** argv)
{
    struct rapl_data * rd = NULL;
    uint64_t * rapl_flags = NULL;
    uint64_t cores = 0, threads = 0, sockets = 0;
    if (!sockets)
    {
        core_config(&cores, &threads, &sockets, NULL);
    }
        #ifdef MPI
        MPI_Init(&argc, &argv);
        //printf("mpi init done\n");
        #endif

        if(init_msr())
    {
        return -1;
    }
    //printf("msr init done\n");
    if (rapl_init(&rd, &rapl_flags))
    {
        return -1;
    }
    //printf("init done\n");

    FILE *fp;
    fp= fopen("../power2.txt","w");
    rapl_r_test(&rd, fp);
    fclose(fp);

    //dump_rapl_power_info(stdout);
    //finalize_msr();
    //#ifdef MPI
    //MPI_Finalize();
    //#endif

    return 0;
}

