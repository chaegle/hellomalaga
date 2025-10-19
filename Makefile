# Simple Makefile for Hello World

# Compiler and flags
CC := $(CROSS_COMPILE)gcc
CFLAGS := -Wall -O2

# Output binary
TARGET := hello

# Source files
SRCS := main.c
OBJS := $(SRCS:.c=.o)

# Default target
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target
clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: all clean
