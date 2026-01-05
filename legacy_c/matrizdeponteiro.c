#include<stdio.h>
#include<string.h>

#define MAXLIN 5000

char *ptrlinha[MAXLIN]; //apontadores para linhas texto
int lelinhas(char *prtlinha[],int nlinhas);
void imprlinhas(char *ptrlinha[],int nlinhas);

void qsort(char *ptrlinha[],int esq,int dir);

void strcpy(char *s, char *t);
//void *aloc(int n);

//ordena linhas de entrada
main()
{
 int nlinhas;
 if((nlinhas=lelinhas(ptrlinha,MAXLIN))>=0)
 {
  qsort(ptrlinha,0,nlinhas-1);
  imprlinhas(ptrlinha,nlinhas);
  return 0;
 }
 else
 {
  printf("Erro: entrada muito grande\n");
  return 1;
 }
}

#define TAMMAX 1000
int lelinha(char *,int);
char *aloca(int);

//lelinhas: le linhas da entrada
int lelinhas(char *ptrlinha[],int maxlin)
{
 int tam,nlinhas;
 char *p,linha[TAMMAX];

 nlinhas=0;
 while((tam=lelinha(linha,TAMMAX))>0)
  if(nlinhas >=maxlin||(p=aloca(tam))==NULL)
   return -1;
  else
  {
    linha[tam-1]='\0';
    strcpy(p,linha);
    ptrlinha[nlinhas++]=p;
  }
 return nlinhas;
}

//imprlinhas: imprime linhas na saida
void imprlinhas(char *ptrlinha[],int nlinhas)
{
 int i;
 for(i=0;i<nlinhas;i++)
  printf("%s\n",ptrlinha[i]);
}

//qsort: ordena v[esq]...v[dir] em ordem crescente
void qsort(char *v[],int esq,int dir)
{
 int i,ultimo;
 void troca(char *v[],int i,int j);
 if(esq>=dir) //nao faz nad se vetor contem menos de 2 elementos
  return;
 troca(v,esq,(esq+dir)/2);
 ultimo=esq;
 for(i=esq+1;i<=dir;i++)
  if(strcmp(v[i],v[esq]<0)
   troca(v,++ultimo,i);
 troca(v,esq,ultimo);
 qsort(v,esq,ultimo-1);
 qsort(v,ultimo+1,dir);

//troca: substitui v[i] por v[j]
void troca(char *v[],int i,int j)
{
 char *temp;

 temp=v[i];
 v[i]=v[j];
 v[j]=temp;
}
}

/* strcpy: copy t to s; array subscript version */ 
void strcpy(char *s, char *t) 
{
 int i;
 i = 0;
 while ((s[i] = t[i]) != '\0') 
  i++; 
}

//#define ALLOCSIZE 10000 /* size of available space */
//static char allocbuf[ALLOCSIZE]; /* storage for alloc */ 
//static char *allocp = allocbuf; /* next free position */ 
//char *alloc(int n) /* return pointer to n characters */ 
//{ 
 //if (allocbuf + ALLOCSIZE - allocp >= n) 
 //{ /* it fits */
  //allocp += n;
  //return allocp - n; /* old p */ 
 //} 
 //else /* not enough room */ 
 //return 0;
//} //void afree(char *p) /* free storage pointed to by p */ { if (p >= allocbuf && p < allocbuf + ALLOCSIZE) allocp = p;
