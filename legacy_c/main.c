//fazer e compilar os arquivos main.c getline.c e strindex.c
#include<stdio.h>
#define MAXLINE 1000
int getline(char s[],int lim);
int strindex(char source[],char searchfor[]);
char pattern[]="ould";

main()
{
char line[MAXLINE];
int found=0;
while(getline(line,MAXLINE)>0)
 if(strindex(line,pattern)>=0)
 {
  printf("%s   ",line);
  found++;
 }
printf("%d\n",found);
return found;
}
