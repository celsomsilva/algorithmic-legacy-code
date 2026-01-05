#include<stdio.h>
#include<stdlib.h>

main()
{
      int atoi(char*);
      int(*p)(char*);
      p = &atoi();
      char c[] = "8";
      int i = 0;
      printf("ANTES DE TRANSFORMAR: %d \n",i);
      i = (*p)(c);
      printf("APOS TRANSFORMAR: %d\n",i);
}
 
