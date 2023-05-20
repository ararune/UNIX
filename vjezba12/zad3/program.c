#include <stdio.h>
#include <stdlib.h>

extern void karta(); // Function prototype for the library function

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Usage: %s <number_of_cards>\n", argv[0]);
        return 1;
    }

    int brojKarata = atoi(argv[1]);

    FILE *file = fopen("karte", "w");
    if (file == NULL) {
        printf("Cannot open the file for writing.\n");
        return 1;
    }

    // Redirect stdout to the file
    freopen("karte", "w", stdout);

    for (int i = 0; i < brojKarata; i++) {
        karta(); // Call the library function (prints to stdout, redirected to the file)
    }

    fclose(file);

    return 0;
}
