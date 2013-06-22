#makefile
CC = gcc
WARNINGS = -Wall

all: Inputs.dll

Inputs.dll: inputs.o
	$(CC) -shared -o Inputs.dll inputs.o -Wl,--out-implib,libmessage.a
	
inputs.o: inputs.c inputs.h
	$(CC) -c -DBUILD_DLL inputs.c
	
clean:
	rm -rf *o Inputs.dll
