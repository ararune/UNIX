#include <stdio.h>
#include <stdlib.h>

extern char* bur(int broj);

int main(int argc, char* argv[]) {
  if (argc != 2) {
    printf("Usage: %s <number>\n", argv[0]);
    return 1;
  }

  int number = atoi(argv[1]);

  char* word = bur(number);
  printf("%s\n", word);
 
  return 0;
}
