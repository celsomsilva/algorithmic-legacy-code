#include<stdio.h>
#define MAXIMO 250
main()
{
char larg[MAXIMO];
char larg2[MAXIMO];
int i=0;
int j=0;
while ((larg[i]=getchar())!=EOF)
 i++;
while(i!=0)
 {
 i--;
 larg2[j]=larg[i];
 j++;
 if(i==0) larg2[j]='\0';
 }
printf("%s\n",larg2);
}
