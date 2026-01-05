#include <stdio.h>
main()
{
int c,i,nwhite,nother,ndigit[10];
nwhite=nother=0;
for(i=0;i<10;i++)
 ndigit[i]=0;
while((c=getchar())!=EOF)
 if(c>='0'&&c<='9')
  ++ndigit[c-'0'];/*NO SISTEMA ASCI, O VALOR HEXA DA VARIAVEL C, NO MOMENTO,
HE DIMINUIDA PELO VALOR HEXA DE ZERO; A LINHA DE COMANDO AO LADO VAI ADICIONAR
UMA UNIDADE A POSICAO DO VETOR QUE GETCHAR() DETECTAR*/
 else if(c==' '||c=='\n'||c=='\t')
   ++nwhite;
   else ++nother;   
printf("\nndigit = ");
for(i=0;i<10;++i)
 printf("%d",ndigit[i]);
printf("\tESPACOS EM BRANCO = %d OUTROS = %d\n",nwhite,nother);
}
