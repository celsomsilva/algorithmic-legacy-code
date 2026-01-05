//RECURSIVO NAO! ITOA2.C
#include<stdio.h>
#define MAX 100

void itoa(int n,char s[]);
void reverse(char);
main()
{
 int n=14;
 char s[MAX];
 itoa(n,s);
}

void itoa(int n,char s[])
{
 int i,sign;
 if((sign=n)<0)
  n=-n;
 i=0;
 do
  s[i++]=n%10+'0';
 while((n/=10)>0);
 if (sign<0)
  s[i++]='-';
 s[i]='\0';
 reverse(s);
 printf("%s\n",s);
}

 #include <string.h>
void reverse(char s[])
{
 int c, i, j;
 for (i = 0, j = strlen(s)-1;i < j; i++, j--)
 {
  c = s[i];
  s[i] = s[j];
  s[j] = c;
 }
}
