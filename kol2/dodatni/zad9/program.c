#include <stdio.h>
#include <stdlib.h>

char* vratiPrvog(char* str1, char* str2);

int main(int argc, char* argv[]) {
    if(argc != 3) {
	printf("Greška: Program očekuje točno 2 argumenta.\n");
	return -1;
    }

   printf("Prvi po abecedi: %s\n", vratiPrvog(argv[1], argv[2]));

   return 0;
}
