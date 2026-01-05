//conta o numero de bits 1
#include<stdio.h>
main()
{
int b;
unsigned x=32,y=32;
for(b=0;x!=0;x>>=1)
{ 
 if(x&01) 
  b++;
y&=(y-1);
printf("numero de bits: %d\nteste: %u\n",b,y);
}
}
