#include<stdio.h>
#include<string.h>
#define MAXLIN 1000

int lelinha(char *linha,int max);

main(int argc,char *argv[])
{
 char linha[MAXLIN];
 long nrlinha=0;
 int c,exceto=0,numero=0,achadas=0;

 while(--argc>0&&(*++argv)[0]=='-')
  while(c=*++argv[0])
   switch(c)
   case 'x':
    exceto=1;
    break;
   case 'n':
    numero-1;
    break;
   default
   .
   .
   .
   .
   .

}