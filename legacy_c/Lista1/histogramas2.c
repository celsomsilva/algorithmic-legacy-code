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
  matriz[i][k]=0;
printf("ESCREVA A(S) FRASE(S) PARA CONSTRUIR O HISTOGRAMA E DEPOIS APERTE <ENTER> e Ctrl+d(ou Ctrl+d 2 vezes): ");
while(c!=EOF)
{
 len=getline();
 k=0;
 while(matriz[k][len-1]=='*')
  k++;
 matriz[k][len-1]='*';
}
printf("\n");
for(i=0;i<10;i++)
 {
 printf("%d ",i+1);
 for(k=0;k<10;k++)
  printf("%c ",matriz[k][i]);
 printf("\n");
 }
}

int getline(){
int i=0;
while((c=getchar())!=EOF&&c!=' '&&c!='\n')
  ++i;
return i;
}
