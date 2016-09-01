# linrar
LIbmsr/NRm/ARgobot

Global power manager. 
Uses libmsr to get the current power, then communicates with argobot to change cores to meet the power cap. 
Sample code can be found on argobot/examples/dynamic-es/dyn_server.c

How to compile (in dynamic-es folder):
\# make 
\# cd libmsr && make

How to run:
\# ./dyn_server <port>
\# ./dyn_app <max # of ESs> <timeout> <server> <port>

Details:
Server uses the ./libmsr to retrieve power. Then it use a naive approach to meet power cap. If power is more than desired power cap (currently is hard coded in server source code), it sends a message to decrease number of active cores, and checks the resonse. Similarily, if power is less than power cap, increases number of cores. 



test command
