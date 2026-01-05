#include<stdio.h>
#define MAXIMO 250
main()
{
char larg[MAXIMO];
int i=0;
printf("ESCREVA A FRASE PARA TIRAR OS ESPAÇOS E DEPOIS APERTE <ENTER> e Ctrl+d(ou Ctrl+d 2 vezes): ");
while ((larg[i]=getchar())!=EOF)
 if (larg[i]!=' ') i++;
larg[i]='\0';
printf("\nFRASE SEM ESPAÇOS: %s",larg);
}
