#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#define MAX 120
#define LIM 40 //SAO 40 CARTAS

void getline(int,char[]);
void erros(char[]);
void avisarerros();

int vet[3]={0,0,0};

main()
{
 int soma=0,a,b,i,j=0,k=0;
 char v[2];
 char s[LIM];
 printf("ENTRE COM OS VALORES: ");
 getline(LIM,s);
  while(s[k]!='\n'&&s[k-1]!='\n')
  {
   while(s[k]!=' '||s[k]!='\n')
    v[j++]=s[k++];
   k++; 
   v[j]='\0';
   if(!strcmp("A",v)||!strcmp("K",v)||!strcmp("J",v)||!strcmp("Q",v))
   {
    a=v[0];
    switch(a)
    {
     case 'A': soma++;
     break;
     case 'K': soma+=11;
     break;
     case 'J': soma+=3;
     break;
     case 'Q': soma+=2;
     break;
    }
   }
   else
   {
    if(2<(b=atoi(v))<7)
     soma+=b;
    else
     erros(v);
   }
  }  
 //}
avisarerros();
}

void getline(int lim, char s[])
{
int c, i;
for (i=0; i < lim-1 && (c=getchar())!=EOF && (c!='\n'&&s[i-1]!='\n'); ++i)
 s[i] = c;
if (c == '\n') {
 s[i] = c;
 ++i;
}
s[i] = '\0';
}

void erros(char v[])
{
 int numero;
 if('a'<v[0]<'b')
  vet[0]++;
 if('A'<=v[0]<'J'&&'K'<v[0]<'Q'&&'Q'<v[0]<'Z')
  vet[1]++;
 numero=atoi(v);
 if(numero==1||numero>7)
  vet[2]++;
}

void avisarerros()
{
  printf("FOI(FORAM) DETECTADO(S) %d CARACTER(ES) MINUSCULO(S)",vet[0]);  
  printf("FOI(FORAM) DETECTADO(S) %d  CARACTER(ES) MAIUSCULO(S) INVALIDO(S)",vet[1]);
  printf("FOI(FORAM) DETECTADO(S) %d  NUMERO(S) INVALIDO(S)",vet[2]);
}
