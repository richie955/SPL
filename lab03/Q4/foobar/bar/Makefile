CC = gcc
CFLAGS = -Wall -g -fPIC -I../include
SRCS = bar1.c bar2.c 
OBJS = $(SRCS:.c=.o)

all: $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@



