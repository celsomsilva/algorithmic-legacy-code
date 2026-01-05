#include<stdio.h>
#define MAXIMO 250
void inverte(char[],char[],int);
main()
{
char larg[MAXIMO];
char larg2[MAXIMO];
int i=0;
printf("ESCREVA A PALAVRA OU FRASE A SER INVERTIDA E DEPOIS APERTE <ENTER> e Ctrl+d(ou Ctrl+d 2 vezes): ");
while ((larg[i]=getchar())!=EOF)
 i++;
inverte(larg,larg2,i);
printf("\nPALAVRA INVERTIDA: %s\n",larg2);
}
void inverte(char aux[],char aux2[],int i)
{
int j=0;
while(i!=0)
 {
 i--;
 aux2[j]=aux[i];
 j++;
 if(i==0) aux2[j]='\0';
 }
}
