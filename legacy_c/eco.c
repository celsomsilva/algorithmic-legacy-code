/*ecoa argumentos na linha de comando 1a. versao*/
#include<stdio.h>

main(int argc,char *argv[])
{
 int i;

 for(i=1;i<argc;i++)
  printf("%s%s",argv[i],(i<argc-1)?" ":" ");
 printf("\n");
 return 0;
}
