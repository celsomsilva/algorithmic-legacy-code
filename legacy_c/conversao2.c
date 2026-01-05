#include<stdio.h>
main()
{
float celsius, fahr;
int inicio=0,fim=300,incr=20;
celsius=inicio;
while(celsius<=fim)
 {
 fahr=(9*celsius/5)+32;
 printf("%3f%6.1f\n",celsius,fahr);
 celsius=celsius+incr;
 }
}
