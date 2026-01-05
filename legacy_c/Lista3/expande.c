#include<stdio.h>
#define MAX 100
void expande(char[],char[]);
main()
{
char vetor1[MAX],vetor2[MAX]="-celsoMARCELOa-fda0-4SilvaF-H-";
expande(vetor2,vetor1);
printf("STRING EXPANDIDA: %s\n",vetor1);
}

void expande(char s1[],char s2[])
{
int i,j=0,k=0;
for(i=0;s1[i]!='\0';i++)
 if(i==0||s1[i+1]=='\0'||s1[i]!='-')
  s2[k++]=s1[i];
 else
  for(j=s1[i-1]+1;j<s1[i+1];j++)
   s2[k++]=j; 
s2[k]='\0';
}
