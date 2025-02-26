CC = gcc
CFLAG = -Wall -g

srcs = math.c utils.c main.c
objs = math.o utils.o main.o

target = app

all : $(target)

$(target): $(objs)
	$(CC) $(CFLAG) -o $@ $(objs)

%.o:%.c
	$(CC) $(CFLAG) -c $< -o $@

clean:
	rm -f $(objs) $(targets)

main.o : math.h utils.h
utils.o : math.h utils.h
math.o : math.h
