CC = gcc
CFLAGS = -fPIC -Iinclude
LDFLAGS = -shared
TARGET = libfoobar.so
FOO_OBJS = foo/foo1.c foo/foo2.c foo/foo3.c
BAR_OBJS = bar/bar1.o bar/bar2.o 
OBJS = $(FOO_OBJS) $(BAR_OBJS)

all: foo bar $(TARGET)

foo:
	$(MAKE) -C foo

bar:
	$(MAKE) -C bar

$(TARGET):$(OBJS)
	$(CC) $(LDFLAGS) -o $(TARGET) $(OBJS)

