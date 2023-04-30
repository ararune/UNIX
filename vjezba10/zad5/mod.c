#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
   if(argc != 2) {
     printf("Usage: mod <number>\n");
     return 1;
   }

   int broj = atoi(argv[1]);
   int apsolutni = abs(broj);

   printf("Apsolutna vrijednost broja %d je %d.\n", broj, apsolutni);

   return 0;
}
