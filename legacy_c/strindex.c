//procura uma substring na string e retorna sua posicao
#include<stdio.h>
int strindex(char s[],char t[]);
main()
{
 char s[]="celso marcelo da silva",t[]="o d";
 printf("A STRING SE ENCONTRA NA %d.a POSICAO\n",strindex(s,t));
}

int strindex(char s[],char t[])
{
 int i,j,k;
 for(i=0;s[i]!='\0';i++)
 {
  for(j=i,k=0;t[k]!='\0'&&s[j]==t[k];j++,k++)
      ;
  if (k>0&&t[k]=='\0')
   return i;
 }
  return -1;
}
