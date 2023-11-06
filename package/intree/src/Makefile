CC = gcc

PHONY := all
all: epoll hello

epoll: epoll.c
	$(CC) -o ../dist/$@ '$<'
PHONY += epoll
hello: hello.c
	$(CC) -o ../dist/$@ '$<'
PHONY += hello
clean:
	rm -f epoll
	rm -f hello
PHONY += clean
.PHONY: $(PHONY)
