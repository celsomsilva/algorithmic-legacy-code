//com base na funcao atof, fazer um programa que transforma um numero em notacao cientifica(3.12e3 --> tres ponto doze ao cubo) e vice-versa(com 'e' maiusculo e minusculo)
#include<ctype.h>
#include<stdio.h>
#define MAX 100
char issdigit(char s[]);
char isspace(char s[]);
double atof(char s[]);
int getline(char s[],int lim);
main()
{
double m;
char vetor[MAX];
getline(vetor,MAX);
m=atof(vetor);
printf("RESULTADO: %f",m);
}

double atof(char s[])//converte a string s para double
{
double val,power;
int i,sign
for(i=0;isspace(s[]);i++)//isspace(): funcao da blibioteca ctype que tira os espacos
 ;
sign=(s[i]=='-')? -1:1;
if(s[i]=='+'||s[i]=='-')
 i++;
for(val=0.0;isdigit(s[i]);i++)//isdigit(): funcao da blibioteca ctype que testa se he digito
 val=10.0*val+(s[i]-'0');
if(s[i]=='.')
 i++;
for(pot=1.0;isdigit(s[i]);i++)
 {
 val=10.0*val+(s[i]-'0');
 pot*=10.0;
 }
return sinal*val/pot;
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
