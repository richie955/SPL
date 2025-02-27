CC = gcc
CFLAGS = -Wall -g -MMD -MP

src_dir = src
obj_dir = obj
dep_dir = dep

src_files = $(wildcard $(src_dir)/*.c)
obj_files = $(patsubst $(src_dir)/%.c, $(obj_dir)/%.o, $(src_files))
dep_files = $(patsubst $(src_dir)/%.c, $(dep_dir)/%.d, $(src_files))

target = app

all: $(target)

$(target): $(obj_files)
	$(CC) $(obj_files) -o $@

$(obj_dir)/%.o: $(src_dir)/%.c
	@mkdir -p $(obj_dir) $(dep_dir)
	$(CC) $(CFLAGS) -c $< -o $@
	@mv $(@:.o=.d) $(dep_dir)

-include $(dep_files)

clean:
	rm -rf $(obj_dir) $(dep_dir) $(target)


DEP_FILES = $(patsubst $(src_dir)/%.c,$(dep_dir)/%.d,$(src_files))