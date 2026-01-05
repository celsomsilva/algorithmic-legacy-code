#include<stdio.h>

struct Turma
{
char professor;
int diadasemamana;
char tempo;
};

struct disciplina
{ 
struct disciplina *prox;//o "prox" usado em algoritimos e estruturas) 
char *nome[5];
char *codigo;
char *abreviatura;
int *periodo;
struct Turma *turma;
};

main() 
{ 
struct disciplina p;
*p.nome="Celso";
printf("%s",*p.nome);
}
