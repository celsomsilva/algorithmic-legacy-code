#include<stdio.h>
int minusculo(int);
main()
{
int i,c=0;
char s[100];
printf("ESCREVA A FRASE OU PALAVRA PARA SER CONVERTIDA E DEPOIS TECLE <ENTER>: ");
for(i=0;(c=getchar())!='\n';i++)
 s[i]=minusculo(c);
s[i]='\0';
printf("FRASE OU PALAVRA EM MINUSCULO: %s\n",s);
}

int minusculo(int c)
{
 (c>='A'&&c<='Z')?c=c+'a'-'A':c;
 return c;
}
