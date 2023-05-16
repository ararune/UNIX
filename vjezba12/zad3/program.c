#include <stdio.h>
#include <stdlib.h>

extern void karta(); // Deklaracija funkcije karta() iz biblioteke

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Upotreba: ./program <broj_karata>\n");
        return 1;
    }

    int broj_karata = atoi(argv[1]);

    FILE *datoteka = fopen("karte", "w");
    if (datoteka == NULL) {
        printf("Greška pri otvaranju datoteke.\n");
        return 1;
    }

    for (int i = 0; i < broj_karata; i++) {
        karta();
        fflush(stdout); // Osvježi ispis prije upisa u datoteku
        fprintf(datoteka, "%d. ", i + 1);
        fprintf(datoteka, "%d\n", rand() % 10 + 1); // Generiraj broj između 1 i 10
    }

    fclose(datoteka);
    printf("Generiranje karata završeno. Rezultat je zapisan u datoteku 'karte'.\n");

    return 0;
}
