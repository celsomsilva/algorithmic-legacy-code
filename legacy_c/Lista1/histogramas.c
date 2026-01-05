#include<stdio.h>
#define MAXMATRIZ 10 //NUMERO MAXIMO DE CARACTERES POR LINHA E COLUNA
int getline();
int c=0;
main()
{
int i,k,len;
char matriz[MAXMATRIZ][MAXMATRIZ];
int vetor[MAXMATRIZ];
for(i=0;i<MAXMATRIZ;i++)
  for(k=0;k<MAXMATRIZ;k++)
   matriz[i][k]=' ';
for(i=0;i<MAXMATRIZ;i++)
 vetor[i]=i+1;
printf("ESCREVA A(S) FRASE(S) PARA CONSTRUIR O HISTOGRAMA E DEPOIS APERTE <ENTER> e Ctrl+d(ou Ctrl+d 2 vezes): ");
while(c!=EOF)
{
 len=getline();
 k=0;
 while(matriz[k][len-1]=='*')
  k++;
 matriz[k][len-1]='*';
}
for(i=9;i>-1;i--)
 {
 for(k=0;k<10;k++)
  printf("%c ",matriz[i][k]);
 printf("\n");
 }
 for(i=0;i<MAXMATRIZ;i++)
  printf("%d ",vetor[i]);
 printf("\n");
}

int getline(){
int i=0;
while((c=getchar())!=EOF&&c!=' '&&c!='\n')
  ++i;
return i;
}
