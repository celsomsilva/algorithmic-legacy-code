#include<stdio.h>
#define INICIO 0
#define FIM 300
#define INCR 20
float conversion(int);
main()
{
int fahr;
for(fahr=INICIO;fahr<=FIM;fahr+=INCR)
 printf("%3d%6.1f\n",fahr,conversion(fahr));
}
float conversion(int fahr2)
{
float p;
p=(5.0/9.0)*(fahr2-32);
return p;
}

