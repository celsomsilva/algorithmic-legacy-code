#include<stdio.h>
int detectar(char s[],char c[]);
main()
{
 char vetor1[]="celso marcelo da silva",vetor2[]="tio joao";
 printf("A posicao procurada eh %d\n",detectar(vetor1,vetor2));
}

int detectar(char c[],char s[])  // retorna a 1a. posicao do vetor1 que tenha qquer caractere de vetor2
{
 int i,k,posicao=100000;
 for(k=0;c[k]!='\0';k++)
 {
  for(i=0;s[i]!='\0';i++)
    if(s[i]==c[k])
     if(posicao>(k+1)) posicao=(k+1);
 }
if(posicao==100000) return -1; 
else return posicao;
}
