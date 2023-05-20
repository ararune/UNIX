all: program

program: program.c
	gcc -o program program.c -L$(HOME)/materijali -lbriskula

clean:
	rm -f program karte

run: program
	./program 40 > karte
