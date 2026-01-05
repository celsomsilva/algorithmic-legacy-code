//conta o numero de linhas,palavras,caracteres
# include<stdio.h>
# define DENTRO 1
# define FORA 0
main()
{
 int c,nL,np,nc,estado;
 estado=FORA;
 nL=np=nc=0;
 while((c=getchar())!=EOF)
  {
  ++nc;
  if(c=='\n')
   ++nL;
  if(c==' '||c=='\n'||c=='\t')
   estado=FORA;
  else if (estado==FORA)
   {
   estado=DENTRO;
   ++np;
   }
  }
 printf("%d %d %d\n",nL,np,nc);  
}
