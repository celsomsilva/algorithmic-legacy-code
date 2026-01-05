#include<stdio.h>
#define MAX 10000
void errocomentario(char vetor[],int i);
void errochaves(char vetor[],int i);
main()
{
char vetor[MAX];
int c,i;
for(i=0;i<1000;i++)
 vetor[i]=0;
i=0;
while((c=getchar())!=EOF)
 {
 vetor[i]=c;
 i++;
 }
errocomentario(vetor,i);
errochaves(vetor,i);
}

void errocomentario(char vetor[], int i)
{
int j,barra=0,asterix=0;
for(j=0;j<i;j++)
 {
 if(vetor[j]=='/'&&(vetor[j+1]=='/'||vetor[j+1]=='*'||vetor[j-1]=='*'||vetor[j-1]=='/')) barra++;
 if(vetor[j]=='*'&&(vetor[j-1]=='/'||vetor[j+1]=='/')) asterix++;
 }
printf("%d %d\n",barra,asterix);
if((barra%2)||(asterix%2)||(barra==1||asterix==1))
  puts("EXISTE ALGUM ERRO NA CONFECÇAO DOS COMENTARIOS");
}

void errochaves(char vetor[],int i)
{
int j,chaves=0;
for(j=0;j<i;j++)
 if(vetor[j]=='{') chaves++;
 else if (vetor[j]=='}') chaves--;
if(chaves!=0)
 puts("EXISTE ALGUM ERRO NO FECHAMENTO DAS CHAVES");
}
