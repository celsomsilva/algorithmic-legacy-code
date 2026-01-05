#include<stdio.h>
main()
{
FILE *p;
char ch;
int i=0;
p=fopen("horario.xml","r");
while(i<10)
 {
 ch=fgetc(p);
 putchar(ch);
 if (ch=='\n')
  i++;
 } 
fclose(p);
}

#include <stdio.h> 
#include <string.h> 
#define MAXLIN 1000 

/*struct tnode //o noh da arvore
{
 char *word;  //ponteiros para o texto
 int count; //numero de ocorrencias
 struct tnode *left; // filho direiro
 struct tnode *right; // filho esquerdo
};*/

/*
Program  construindo_lista; 
Type 
    info = dado; 
    pont =elemento; 
    elemento = Record 
                       chave: info; 
                       prox: pont 
               End; 
Var 
     p, prim: pont;  
Begin 
     new(prim); 
     prim.chave:= 3; 
     prim.prox:= nil; 
     new(p); 
     p.chave:= 6; 
     p.prox:= prim; 
     prim:= p; 
     new(p); 
     p.chave:= 9; 
     prim:= p; 
End.
*/

//estrura para lista encadeada(figura na pag 118)
struct Turma
{
char professor;
int diadasemamana;
char tempo;
};

struct disciplina
{ 
struct disciplina *prox;//o "prox" usado em algoritimos e estruturas) 
char *nome;
char *codigo;
char *abreviatura;
int *periodo;
Turma *turma;
};

main(int argc, char *argv[]) 
{ 
char linha[MAXLIN],c[4],opcao; 
int  
while (--argc > 0 && (*++argv)[0] == '-') 
  switch (c=*argv++)//dentro desse estao os modos 
  { 
  case "-xml":
   {
    switch (opcao=(*argv)[1])//dentro desse switch estao as opcoes
    {
    case 'd':
   
    break; 
    case 'D':
  
    break;
    case 'c':
  
    break;
    case 'C':
  
    break;
    case 'a':
  
    break;
    case 'A':
  
    break;
    case 't':
  
    break;
    case 'p':
  
    break;
    case 'h':
  
    break;
    default:
    printf("horario: opcao ilegal %s\n",opcao);
    break; 
    } 
   } 
   break; 
  case "-del":
   
   break; 
  case "-inc":
  
   break;
  default:
   printf("horario: opcao ilegal %s\n", c); 
   argc = 0; 
   achadas = -1; 
   break; 
  } 
if (argc != 1)
 printf("Use: horario -modo -opcao arquivo\n"); 
else 
 while (lelinha(linha, MAXLIN) > 0) 
 { 
  nrlinha++; 
  if ((strstr(linha, *argv) != NULL) != exceto) 
  { 
   if (numero)
    printf("%ld:", nrlinha); 
   printf("%s", linha); 
   } 
 } 
return 
}
