#include<stdio.h>
unsigned inverte(unsigned x,int p, int n);
main()
{
int p=9,n=5;
unsigned x=675;
printf("Numero invertido: %u\n",inverte(x,p,n));
}

unsigned inverte(unsigned x,int p, int n)
{
unsigned y;
y=((~(~0<<n))<<(p-n+1));//produz a mascara para a operacao de xor
return(x^y);
}
