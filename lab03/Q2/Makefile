CC = gcc
CFLAGS = -Wall -g

src_dir = src
obj_dir = obj

srcs = $(wildcard $(src_dir)/*.c)
objs = $(srcs:$(src_dir)/%.c=$(obj_dir)/%.o)

target = app

all: $(target)

$(target): $(objs)
	$(CC) $(objs) -o $@

$(obj_dir)/%.o: $(src_dir)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(obj_dir)/*.o $(target)
 


# src = $(wildcard $(src_dir)/*.c)
# obj = $(patsubst $(src_dir)/%.c , $(obj_dir)/%.o , $(src))
