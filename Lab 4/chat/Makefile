all: server client

run_server: server
	@./server

run_client: client
	@./client

server:
	@rm -f server.out
	@gcc server.c -lpthread -o server

client:
	@rm -f client.out
	@gcc client.c -lpthread -o client

clean:
	@rm *.out
