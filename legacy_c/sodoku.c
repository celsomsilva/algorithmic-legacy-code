#include<stdio.h>

int ver_lin(int, int);
int ver_col(int, int);
int ver_quad_menor(int, int, int);

int m[9][9];/*=VALORES USADOS PARA TESTE, PARA EVITAR A PERDA DE TEMPO NA DIGITACAO EM TESTES SUCESSIVOS {{0,7,0,0,0,0,8,0,0},{0,8,0,1,6,0,5,0,0},{0,0,6,0,0,0,0,0,3},{3,0,4,0,0,0,2,0,0},{5,6,0,2,9,0,0,0,0},{0,0,0,0,3,5,7,0,0},{0,0,9,0,2,4,0,0,8},{8,0,0,7,1,0,0,0,0},{0,3,0,6,0,0,0,2,9}};*/
int aux[9][9];/*=usado para saber se esse numero jah comecou sendo um resultado permanente {{0,1,0,0,0,0,1,0,0},{0,1,0,1,1,0,1,0,0},{0,0,1,0,0,0,0,0,1},{1,0,1,0,0,0,1,0,0},{1,1,0,1,1,0,0,0,0},{0,0,0,0,1,1,1,0,0},{0,0,1,0,1,1,0,0,1},{1,0,0,1,1,0,0,0,0},{0,1,0,1,0,0,0,1,1}};*/

main()
{
	
	int i,j,k,lin,col,teste = 1,teste2 = 0,*p,*pt,c;
	  
	  //pegando os numeros
	puts("ENTRE COM OS DADOS JÁ EXISTENTES DO SUDOKU. COLOQUE AS LINHAS DO QUADRADO INTEIRO. QUANDO FOR VAZIO COLOQUE ZERO:");
	for(i=0;i<9;i++) 
	{
		printf("%da. linha: ",(i+1));
		for(j=0;j<9;j++)
		{
			if((c=getchar())!= '\n')
			{
				m[i][j]= c - '0';
				if(c!='0')
				 	aux[i][j]=1;
				else
					aux[i][j]=0;
			}
			else
				j--;
				
		}
	}
	  
	p=m;
	pt=aux;
	  
	//andando na matriz
		for(i=0;i<81;i++)
		{
			
			c=*(p+i);
			lin=i/9;
			col=i%9;
			if (!c)
				for(j=1;j<10;j++)//testando os numeros
				{
					teste = ver_lin(lin,j);
					if(teste)
						teste = ver_col(col,j);
					if(teste)
						teste = ver_quad_menor(col,lin,j);
					if(teste)
					{
						*(p+i) = j;
						break;
					}
					else
						if (j==9)//eh hora de voltar
						{
							do
							{
								i--;
								while(*(pt+i))//para nao modificar os numeros jah corretos
									i--;
								k=*(p+i);
								lin=i/9;
								col=i%9;
								while((!teste2)&&(k<9))
								{
									k++;
									teste2 = ver_lin(lin,k);
									if(teste2)
										teste2 = ver_col(col,k);
									if(teste2)
										teste2 = ver_quad_menor(col,lin,k);
									if(teste2)
									{
										*(p+i)=k;
									}
								}
								if((k==9)&&(!teste2))
									*(p+i)=0;
							}
							while (*(p+i)==0);
							teste2 = 0;
						}
				}
			
		}
	  //escrevendo os numeros
	  for(i=0;i<81;i++)
	{
		if(!(i%9))
		 printf("\n");
		printf("%d ",*(p+i));
		
	}
	printf("\n");
	printf("\n");
}

int ver_lin(int lin, int j)
{
int k;
	for(k=0;k<9;k++)//verificar linha
	{
		if(m[lin][k]==j)
			return 0;//tem numero igual ao testado na linha
	}
return 1;
}

int ver_col(int col, int j)
{
int k;
	for(k=0;k<9;k++)//verificar coluna
	{ 
		if(m[k][col]==j)
			return 0;
	}
return 1;
}


int ver_quad_menor(int col, int lin, int j)
{
int i,k,lin2,col2;
lin2=lin%3;
col2=col%3;
lin2 = lin-lin2; 
col2 = col-col2;
	for(k=lin2;k<(lin2+3);k++)//verificar quadradinho
	{
		for(i=col2;i<(col2+3);i++)
		{ 
			if(m[k][i]==j)
				return 0;
		}
	}
return 1;
}      

