#include <stdio.h> 
#include <string.h> 
#define MAXLIN 1000 

int lelinha(char *linha,int max);

/* acha: imprime linhas com o padrão do último argumento*/ 

main(int argc, char *argv[]) 
{ 
char linha[MAXLIN]; 
long nrlinha = 0; 
int c, exceto = 0, numero = 0, achadas = 0; 
while (--argc > 0 && (*++argv)[0] == '-') 
 while (c = *++argv[0]) 
  switch (c) 
  { 
  case 'x':
   exceto = 1; 
   break; 
  case 'n':
   numero = 1; 
   break; 
  default:
   printf("acha: opcao ilegal %c\n", c); 
   argc = 0; 
   achadas = -1; 
   break; 
  } 
if (argc != 1)
 printf("Use: acha -x -n padrao\n"); 
else 
 while (lelinha(linha, MAXLIN) > 0) 
 { 
  nrlinha++; 
  if ((strstr(linha, *argv) != NULL) != exceto) 
  { 
   if (numero)
    printf("%ld:", nrlinha); 
   printf("%s", linha); 
   achadas++; 
  } 
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
