#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[])
{
  int bodovi;
  bodovi = atoi(argv[1]);

  if(bodovi < 40)
    printf("pad\n");
  else
    printf("prolaz\n");

  return 0;
}
