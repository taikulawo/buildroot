CC = gcc

.PHONY: clean

epoll: epoll.c
	$(CC) -o ../dist/$@ '$<'
hello: hello.c
	$(CC) -o ../dist/$@ '$<'
clean:
	rm -f epoll
	rm -f hello
