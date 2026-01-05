#include<stdio.h>
void squeeze(char s[],int c);
main()
{
int c='a';
char vetor[]="celso marcelo da silva";
squeeze(vetor,c);
printf("%s\n",vetor);
}
void squeeze(char s[],int c)  // deleta todo caracter de s
{
 int i,j;
 for(i=j=0;s[i]!='\0';i++)
   if(s[i]!=c)
    s[j++]=s[i];
 s[j]='\0';
}
