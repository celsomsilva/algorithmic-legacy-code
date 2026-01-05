#include<stdio.h>//fazer um programa que imprima uma palavra por linha
main()
{
int c;
while((c=getchar())!=EOF)
 {
 if (c==' '||c=='\n'||c=='\t')
  {
  printf("\n"); 
  }
 }
putchar(c); 
}
