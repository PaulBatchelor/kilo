all: kilo

kilo: kilo.c
	$(CC) -o kilo kilo.c -Wall -W -pedantic -std=c99 -lrunt -ldl

install:
	install kilo /usr/local/bin
	install kilo_listen /usr/local/bin

clean:
	rm -rf kilo
