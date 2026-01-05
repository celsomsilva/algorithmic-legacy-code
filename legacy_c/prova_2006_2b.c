#include<stdio.h>
#include<stdlib.h>
#include<string.h>

main()
{
 int vetor[32]={4,9,1,8,0,2,5,7,24,12,0,1,54,0,56,2,5,2,99,33,55,66,22,77,3,0,22,104,354,876,0,219},i;
 unsigned valor;
 char vetor2[32];
 for(i=0;i<31;i++)
 {
  if(vetor[i])
   vetor2[i]='1';
  else
   vetor2[i]='0';
 }
 vetor[i]='\0';
 valor=strtoul(vetor2,NULL,2);
 printf("Valor: %u\n",valor);
}
