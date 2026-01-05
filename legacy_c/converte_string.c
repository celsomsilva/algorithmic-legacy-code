//converte uma string em hexa para decimal
//OBS: FAZER COM UM NUMERO PRIMEIRO, DEPOIS A STRING
#include<stdio.h>
int atoi(char s[]);
//char converte(char vetor[],char vetor1[]);
main()
{
 char vetor1[]="fff";
 /*int i;
 char j;
char vetor[1]='c',vetor1[6]={a,b,c,d,e,f};*/
 //for();
printf("%d\n",atoi(vetor1));
}
/*char converte(char vetor[],char vetor1[])
{
  while(vetor[0]!=vetor1[i])
   i++;
  return vetor1[i];
}*/
int atoi(char s[])
{
 int i,n;
 n=0;
 for(i=0;(s[i]>='0'&&s[i]<='9')||(s[i]>='a'&&s[i]<='f');i++)
 {
  if(s[i]>='0'&&s[i]<='9')
   n=16*n+(s[i]-'0');
  if(s[i]>='a'&&s[i]<='f')
   n=16*n+(s[i]-'a'+10);
 }
 return n;
}
