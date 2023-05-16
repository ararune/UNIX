#include <stdio.h>
#include <stdlib.h>

extern char *bur(int broj); // Deklaracija funkcije iz statičke biblioteke

int main(int argc, char *argv[]) {
    if (argc < 2) {
        printf("Nedovoljno argumenata.\n");
        return 1;
    }

    int broj = atoi(argv[1]); // Pretvori argument u cjelobrojni broj

    if (broj < 0 || broj > 9) {
        printf("Unesite jednoznamenkasti broj.\n");
        return 1;
    }

    char *rijec = bur(broj); // Poziv funkcije iz statičke biblioteke

    printf("%s\n", rijec);

    return 0;
}
