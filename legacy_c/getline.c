#include<stdio.h>
# define MAX 100
int getline(char s[],int lim);
main()
{
 int lim=MAX;
 char s[MAX];
 printf("NUMERO DE CARACTERES: %d  LINHA DIGITADA:\n%s\n",getline(s,lim),s);
}

int getline(char s[],int lim)
{
int c,i;
i=0;
while(--lim>0&&(c=getchar())!=EOF&&c!='\n')
 s[i++]=c;
 if(c=='\n')
  s[i++]=c;
 s[i]='\0';
 return i;
}
