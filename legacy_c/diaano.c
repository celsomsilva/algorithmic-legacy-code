#include<stdio.h>
static char tabdia[2][13]={{0,31,28,31,30,31,30,31,31,30,31,30,31},{0,31,29,31,30,31,30,31,31,30,31,30,31}};

int dia_do_ano(int ano,int mes,int dia)
{
 int i,bissexto;

 bissexto=((ano%4==0)&&(ano%100!=0))||(ano%400==0);
 for(i=1;i<mes;i++)
  dia+=tabdia[bissexto][i];
 return dia;
}

void dia_do_mes(int ano,int diaano,int *ames,int *adia)
{
 int i,bissexto;

 bissexto=(ano%4==0)&&(ano%100!=0)||(ano%400==0);
 for(i=1;diaano>tabdia[bissexto][i];i++)
  diaano-=tabdia[bissexto][i];
 *ames=i;
 *adia=diaano;
}

char *nome_mes(int n) /*retorna o nome do mes correspondente ao numero recebido*/
{
 static char *nome[]={"Mes Ilegal","Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
 return (n<1||n>12)?nome[0]:nome[n];
}

main()
{
int n=dia_do_ano(2005,1,7);
printf("%d\n",n);
}
