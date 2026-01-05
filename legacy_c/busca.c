//gerar vetor de numeros aleatorios; escrever vetor;ordenar vetor;escrever vetor; pesquisa binaria

#include<stdio.h>
#define MAX 200
int rand(void);
void srand(unsigned int semente);
void ordenar(int vetor[]);
int pesquisar(int vetor[],int pesquisado);
unsigned long int prox=1;
main()
{
int vetor[MAX];
int i,pesquisado;
srand(5);
for (i=0;i<MAX;i++)
 {
 vetor[i]=rand();
 printf("%d\n",vetor[i]);
 }
pesquisado=vetor[MAX-1];
ordenar(vetor);
for (i=0;i<MAX;i++)
 printf("%d\n",vetor[i]);
printf("O ELEMENTO %d EH O %do. ELEMENTO DO VETOR\n",pesquisado,pesquisar(vetor,pesquisado));
}

int rand(void)
{
prox=prox*1103515245+12345;
return (unsigned int)(prox/65536)%32768;
}

void srand(unsigned int semente)
{
prox=semente;
}

void ordenar(int vetor[])
{
 int j,i,minimo;
 int vetor1[MAX];
 for(j=0;j<MAX;j++)
 {
  minimo=0;
  for(i=1;i<MAX;i++)
   if (vetor[i]<vetor[minimo]) minimo=i;
  vetor1[j]=vetor[minimo];
  vetor[minimo]=100000;
  }
  for(j=0;j<MAX;j++)
   vetor[j]=vetor1[j];
} 

int pesquisar(int vetor[],int pesquisado)
{
int j,n;
j=n=(MAX-1);
while (vetor[j]!=pesquisado)
{
 if (vetor[j]<pesquisado) j=(n+j)/2;
 else
 {
  n=j;
  j=j/2;
 }
}
return (j+1);
}
