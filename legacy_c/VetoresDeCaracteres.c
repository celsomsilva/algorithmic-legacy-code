//acha a maior linha
/*passar o maxline para 5 (ou seja, so vao ser impressos uma linha com 5 caracteres (era 1000) e tenho que imprimir na tela o numero total de caracteres
da linha que nao foram impressos*/
#include<stdio.h>
#define MAXLINE 5 //NUMERO MAXIMO DE CARACTERES POR LINHA
int getline(char line[],int maxline);
void copy(char to[],char from[]);
main()
{
int len;
int max;
char line[MAXLINE];
char longest[MAXLINE];
max=0;
while((len=getline(line,MAXLINE))>0)
 if(len>max)
 {
  max=len;
  copy(longest,line);
 }
if (max>0)
 printf("%s com %d caracteres\n",longest,max);
return 0;
}

int getline(char s[],int lim)//le a linha into s, retorna o comprimento
{
int c,i;
for(i=0;(c=getchar())!=EOF && c!='\n';++i)
 if(i<=lim-1) s[i]=c;
if(c=='\n')
 {
  s[i]=c;
  ++i;
 }
s[i]='\0';
return i;
}

void copy(char to[],char from[]) //copia o from em to; ate que seje suficiente
{
int i;
i=0;
while((to[i]=from[i])!='\0')
 ++i;
}
