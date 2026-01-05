//converter   palavra de maiuscula para minuscula
#include<stdio.h>
int lower(int);
main()
 {
 char vetor[]="TESTE";
 char vetor1[6];
 int i;
 int a;
 for(i=0;i<5;i++)
  vetor1[i]=lower(a=vetor[i]);
 vetor1[5]='\0';
 printf("%s\n",vetor1);
 }
int lower(int c) //converte c para letra minúscula caso ascII somente
 {
 if(c>='A' && c<='Z')
  return c+'a'-'A';
 else return c;
 }

