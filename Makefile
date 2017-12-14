all: kilo

CFLAGS=-Wall -W -pedantic -std=c99  -I$(HOME)/.runt/include

LDFLAGS = -L$(HOME)/.runt/lib -lrunt -ldl

kilo: kilo.c
	$(CC) -o kilo kilo.c $(CFLAGS) $(LDFLAGS)

install:
	install kilo /usr/local/bin

clean:
	rm -rf kilo
