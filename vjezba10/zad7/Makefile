# Makefile for zad7

CC = gcc
CFLAGS = -Wall -pedantic

all: modul

modul: fmodul.o mod.o libmodul.a
	$(CC) $(CFLAGS) -o $@ $^ -lm -L. -lmodul

fmodul.o: ../zad3/fmodul.c
	$(CC) $(CFLAGS) -c $< -o $@

mod.o: ../zad5/mod.c
	$(CC) $(CFLAGS) -c $< -o $@

libmodul.a: fmodul.o
	ar rcs $@ $<

clean:
	rm -f modul *.o *.a

clean_start:
	rm -f modul *.o *.a ../zad3/fmodul.c ../zad5/mod.c
