//transforma um numero inteiro em string, em qualquer base
#include<stdio.h>
#define MAX 100
void inverte(char []);
void itob(int,char[],int);
main()
{
 int n=37;//numero inteiro
 int b=20;//base
 char s[MAX];
 itob(n,s,b);//note que a string retorna,mesmo estando void no itob e no inverte
 printf("NUMERO CONVERTIDO:%s\n",s);
}

void itob(int n,char s[],int b)
{
 int i,sign;
 if((sign=n)<0)
  n=-n;
 i=0;
 do
  if(n%b<10)
   s[i++]=n%b+'0';
  else 
   s[i++]=(n%b-10)+'A';
 while((n/=b)>0);
 if (sign<0)
  s[i++]='-';
 s[i]='\0';
 inverte(s);
 }
 
#include <string.h>
void inverte(char s[])
{
 int c, i, j;
 for (i = 0, j = strlen(s)-1;i < j; i++, j--)
 {
  c = s[i];
  s[i] = s[j];
  s[j] = c;
 }
}
