#include <stdio.h>
#include "fmodul.h"

int main() {
   int broj = -5;
   int apsolutniBroj = modul(broj);
   
   printf("Apsolutna vrijednost broja %d je %d.\n", broj, apsolutniBroj);
   
   return 0;
}
