CC = gcc
CLFAGS = -Wall -g

srcs = main.c math.c utils.c
objs = main.o math.o utils.o

target = app

all : $(target)

$(target) : $(objs)
	$(CC) $(CLFAGS) $(objs) -o $@

.o : .c 
	$(CC) $(CFLAGS) -c -o $@ $<

clean :
	rm -f $(objs) $(target)

main.o:math.h utils.h
utils.o :utils.h
math.o :math.h