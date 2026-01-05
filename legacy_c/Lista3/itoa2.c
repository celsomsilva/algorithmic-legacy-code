#include<stdio.h>
#define MAX 10
void itoa(int n, char s[],int tamanho);
void inverte(char s[]);
main()
{
char s[MAX];
int n=-1245,t=10;
itoa(n,s,t);
printf("NUMERO CONVERTIDO:%s\n",s);
}
void itoa(int n, char s[],int tamanho) 
{
 int i, sign,j,aux;
 if ((sign = n) < 0) 
  n = -n; 
 i = 0;
 do 
  {
  s[i++] = n % 10 + '0';
  aux=i; 
  }
 while ((n /= 10) > 0);
 if (sign < 0)
  s[i++] = '-';
 if(tamanho>aux)
  {
  tamanho-=aux;//PELO QUE ENTENDI O TAMANHO MINIMO DO CAMPO NAO CONTA O SINAL
  for(j=1;j<=tamanho;j++)
   s[i++]=' ';
  } 
 s[i] = '\0';
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
