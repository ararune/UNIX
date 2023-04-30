#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
  if(argc != 2) {
    printf("Upotreba: %s <korisničko ime>\n", argv[0]);
    return 1;
  }
  
  printf("%s %s\n", "Hello", argv[1]);

  return 0;
}
