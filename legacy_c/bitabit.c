//escrever uma funcao setabits(x,p,n,y) que retorne x com os n bits que comecam na posicao p setados com os n bits mais a
//direita de y, deixando os outros bits inalterados
#include<stdio.h>
unsigned setabits(unsigned x,unsigned y,int p, int n);
main()
{
int p=4,n=2;
unsigned x=0,y=10;
printf("%u\n",setabits(x,y,p,n));
}

unsigned setabits(unsigned x,unsigned y,int p, int n)
{
int z=1,i;
for(i=n;i>0;i--)
 z=2*z;
x=(y&(~(~0<<n)));//x recebe os n ultimos bits de y(a direita)
x=x<<(p-n+1);//coloca n bits na posicao p
y=~(y&(~((z-1)<<(p-n+1))));//zera as posicoes n apos o p(a serem setadas)
return(x&y);
}
//x=10(1010)
//y=10(1010)
