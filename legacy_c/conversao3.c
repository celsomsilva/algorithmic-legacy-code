#include<stdio.h>
#define INICIO 0
#define FIM 300
#define INCR 20
main()
{
int fahr;
for(fahr=INICIO;fahr<=FIM;fahr=fahr+INCR)
 printf("%3d%6.1f\n",fahr,(5.0/9.0)*(fahr-32));
system("PAUSE");
}
