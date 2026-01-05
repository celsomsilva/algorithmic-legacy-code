#include<stdio.h>
#include<stdlib.h>
//extern int atoi (__const char *__nptr) __THROW __attribute_pure__;
main()
{      
      int(*p)(char*);
      p = &atoi;
      char c[] = "8";
      int i = 0;
      printf("ANTES DE TRANSFORMAR: %d \n",i);
      i = (*p)(c);
      printf("APOS TRANSFORMAR: %d\n",i);
}
 
