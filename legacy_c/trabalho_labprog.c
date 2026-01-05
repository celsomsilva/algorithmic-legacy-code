//ENTRAR COM OS NUMERO PRIMOS NA LINHA DE COMANDO E -C PARA CODIFICAR E -D PARA DECODIFICAR
//nao estah pronto. clonei trabalho de alguem para entregar

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<math.h>

#define N 1000

int codificacao(int [],int[]);
double codificar(int,int []);
void decodificacao(int,int [],int []);
double decodificar(int,int []);
int primos(int,int);
void calculos(int,int,int []);

main(int argc,char *argv[])//PROGRAMA, -d ou -c e 2 numeros primos
{
   int i,j,codigo[N],primo1,primo2,chaves[2];
   char v[4];
    puts("puts5"); 
   argv++;
   primo1=atoi(*++argv);
   primo2=atoi(*++argv);
   if(primos(primo1,primo2))
   {
      puts("DIGITE 2 NUMEROS PRIMOS DEPOIS DE -c OU -d");
      exit(0);
   } 
   puts("puts1");  
   printf("primos %d e %d",primo1,primo2);
   calculos(primo1,primo2,chaves);
    puts("puts2"); 
   if((*argv)[1]=='c' || 'C')
   {
     puts("DIGITE O TEXTO A SER CRIPTOGRAFADO. QUANDO TERMINAR, DIGITE 2 VEZES <ENTER>");
     j=codificacao(codigo,chaves);
   }
   else
   {
   //printf("\nDESEJA DECODIFICAR O CODIGO?<S/N>: ");
    if((*argv)[1]=='d' || 'D')
    {
     puts("puts3"); 
      decodificacao(j,codigo,chaves);
    }
    else
    {
      puts("PARAMETROS INCORRETOS");
      exit(0);
    }
   }
   /*for(i=0;i<20;i++)
   {
    a=pow(10,i);
    printf("%f\n",a);
   }*///printf("\n%d\n",codigo[0]);
}

int codificacao(int cod[],int chaves[])
{
   int i,j,c,c2=0;
   for(i=0;(!((c=getchar())=='\n'&&c2=='\n'))&&(i<N);i++)
   {
      c2=c;
      cod[i] = (int)codificar(c,chaves);
      //printf("debug2: %c %d\n",c,cod[i]);
   }
   i--;
   printf("CODIGO CODIFICADO: ");
   for(j=0;j<i;j++)
    printf("%d ",cod[j]);
   return j;
}

double codificar(int c,int chaves [])
{
   double teste,a;
   a = (double) c;
   teste= pow(a,chaves[1]);
   return fmod(teste,chaves[0]);
}

void decodificacao(int k,int decod[],int chaves[])
{
   int i,j;
   int texto[N];
   for(i=0;i<k;i++)
   {
      //decode = decod[i];
      texto[i] = (int)decodificar(decod[i],chaves);
      printf("k= %d\n",k);
   }
   puts("CODIGO DECODIFICADO: ");
   for(j=0;j<i;j++)
    printf("%c %d\n",texto[j],texto[j]);      
}

double decodificar(int decod, int chaves[])
{
  double resultado=1.0,resto,a,temp;
  int i,min=0;
  a = (double) decod;
  // printf("%f\n",a);
   //printf("debug3: %f",a);
  //potencia = pow(a,19);
  for(i=2;i<11;i++)
  {
    temp=fmod(pow(a,i),chaves[2]);
    if(temp<=min||i==2)
      min=i;    
  }
  printf("debug3: %f ",chaves[1]);
  resto = fmod(pow(a,min),chaves[2]);  
   for(i=0;i<(chaves[1]/min);i++)
   { 
     // if(i<4)//sem isso
      //{
         //209
         resultado *=resto; 
         //resultado*=fmod(resto,221);//209
         printf("resultado %d:%f ",i,resultado);
      //}
   }
  // potencia = pow(a,1);//07
   resto = fmod(pow(a,(chaves[1]%min)),chaves[2]);//209
   resultado*=resto;
   printf("sizeof: %d",sizeof(a));
   //printf("debug: %f",fmod(resultado,221));
   //printf("\n%f",fmod(7,4));
   return fmod(resultado,chaves[2]); //209
}

int primos(int a,int b)
{
  int i=1,j=0;
   puts("puts4"); 
  while(i++ < abs(a/2))
  {
    if((a%i==0)&&a!=2)
    {
      j=1;
      break;
    }
  }
  i=1;
  while(i++ < abs(b/2))
  {
    if((b%i==0)&&b!=2)
    {
      j=1;
      break;
    }
  }
  return j;
   
}

void calculos(int primo1,int primo2,int vetor[])
{
  int produto,produto2,i,j;
  produto=primo1*primo2; 
  produto2= (primo1-1)*(primo2-1);
   puts("calculo3"); 
  for(i=2;!(produto2%i);i++)
  {
    if(primos(i,2))
     continue;
    produto2/=i;
    printf("produto:%d e numero:%d",produto2,i);
    if(!(produto2%i))
       i--;
  }
   puts("calculos1"); 
  for(j=1;;j++)
  {
    if(((j*i)%produto2)==1)
     break;
  }
   puts("calculos2"); 
  vetor[0]=produto;//chave cripto
  vetor[1]=i;//chave cripto
  vetor[2]= j;//chave descripto
  printf("chave cripto: %d",produto);
  printf("chave cripto: %d",i);
  printf("chave cripto: %d",j);
   
   
   
   
   
   
   /*for(i=0;i<4;i++)//i<6
   {
      potencia = pow(a,15);//15
      resto = fmod(potencia,221);//209
      resultado*=resto;
   }
   potencia = pow(a,17);//13
   resto = fmod(potencia,221);//209
   resultado*=resto;
   return fmod(resultado,221); //209*/
   //pow(a,103)mod(209);//tem que elevar no maximo a 15
}
//double, maior numero:1E+37   
/*>2primos: 11 e 19
>produto: 209
>tirando um de cada: 10x18=180=y
>180=2*2*3*3*5
>7: 7 e 180 são primos entre si
>chaves publicas: 7 e 209, sao os numeros escritos em baixo de cada aparelho
>Peguar cada letra, ou seja, seu código ASCII, e elevar a 7 e guardar o resto da divisão deste resultado por 209.

Aqui está um exemplo com chaves 5 e 221:
Celacanto
67 101 108 97 99 97 110 116 111
agora convertemos:
67^5 (mod 221)=84
101^5 (mod 221)=186
108^5 (mod 221)=75
97^5 (mod 221)=54
99^5 (mod 221)=216
97^5 (mod 221)=54
110^5 (mod 221)=145
116^5 (mod 221)=12
111^5 (mod 221)=76
84 186 75 54 216 54 145 12 76

>Para decodificar, vamos olhar qual seria a chave para descriptografar. Repartimos do número Y. A chave de decodificação >é o número cujo produto pelo primeiro número publicado (7) tem como resto 1 na divisão por Y (180)
>chave de decodificacao: 103

exemplo (seguindo o exemplo acima):
aqui a chave de decodificacao eh 77
84^77 (mod 221)=67=C
186^77 (mod 221)=101=e
75^77 (mod 221)=108=l
54^77 (mod 221)=97=a
216^77 (mod 221)=99=c
54^77 (mod 221)=97=a
145^77 (mod 221)=110=n
12^77 (mod 221)=116=t
76^77 (mod 221)=111=o
como realizar a operacao, por exemplo, de 216^77:
216^77(mod 221)= (21664x2168x2164x2161)(mod 221) usando a propriedade distributiva, temos:
216^77(mod 221)= [(21664 (mod 221))x(2168(mod 221))x(2164(mod 221))x(2161(mod 221))] (mod 221)
*/
