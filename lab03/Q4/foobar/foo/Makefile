CC = gcc
CFLAGS = -Wall -g -fPIC -I../include
SRCS = foo1.c foo2.c foo3.c
OBJS = $(SRCS:.c=.o)

all: $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@



