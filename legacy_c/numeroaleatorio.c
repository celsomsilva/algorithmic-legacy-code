#include<stdio.h>
int rand(void);
void srand(unsigned int seed);//seed --> semente (essa funcao so serve para iniciar o next)
unsigned long int next=1;
main()
{
int i;
srand(3);
for(i=0;i<10;i++)
 printf("%u\n",rand());
}
int rand(void)
 {
 next=next*1103515245+12345;
 return(unsigned int)(next/65536)%32768;
 }
void srand(unsigned int seed)
 {
 next=seed;
 }
