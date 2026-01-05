#include<stdio.h>
main()
{
int c,nL,nT;
nL=0;
nT=0;
while ((c=getchar())!=EOF)
{
 if(c=='\n')
  ++nL;
 if(c=='\t')
  ++nT;
}
printf("%d\n%d\n\n",nL,nT);
}
