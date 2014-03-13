#!/usr/bin/make -f

PROGRAM = gpu-manager
PROGRAM_FILES = gpu-manager.c
BIN_LOCATION = /usr/bin/
CC = gcc
CFLAGS =-g -Wall $(shell pkg-config --cflags --libs pciaccess)

all: build

build:
	$(CC) -o $(PROGRAM) $(PROGRAM_FILES) $(CFLAGS)

clean:
	@rm -f $(PROGRAM)

install:
	cp $(PROGRAM) $(BIN_LOCATION)
