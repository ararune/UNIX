#include <stdio.h>
#include "fmodul.h"

int main() {
   int broj;
   printf("Unesite cijeli broj: ");
   scanf("%d", &broj);
   printf("Apsolutna vrijednost broja %d je %d.\n", broj, modul(broj));

   return 0;
}
