#include<stdio.h>
#include<string.h>
#define MAXLIN 1000

int lelinha(char *linha,int max);

main(int argc,char *argv[])
{
 char linha[MAXLIN];
 int achadas=0;

 if(argc!=2)
  printf("Uso acha padrao\n");
 else
  while(lelinha(linha,MAXLIN)>0)
   if(strstr(linha,argv[1])!=NULL)
   {
    printf("%s",linha);
    achadas++;
   }
 
 return achadas;
}

int lelinha(char *linha,int max) //tb chamado de getline,versão ponteiro
{
int c,i;
i=0;
while(--max>0&&(c=getchar())!=EOF&&c!='\n')
 {
 *linha++=c;
 i++;
 }
if(c=='\n')
 {
 *linha++=c;
 i++;
 }
*linha='\0';
return i;
}
