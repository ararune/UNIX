#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 3) {
        printf("Greška: Program očekuje točno 2 argumenta.\n");
        return 1;
    }

    int broj1 = atoi(argv[1]);
    int broj2 = atoi(argv[2]);

    printf("Zbroj: %d\n", broj1 + broj2);

    return 0;
}
