#include<stdio.h>
#include<stdlib.h>
#include<string.h>

#define INDICE 3

main(int arg,char *argv[])
{
	int m[INDICE][INDICE];//={{1,2,3},{4,5,6},{7,8,9}};
	int aux[INDICE][INDICE];//={{1,1,1},{2,2,2},{3,3,3}};
	int i,j,*p,*pt,c,c1,nesp = 1,ncaracter = 0,nenter = 0,convert,convert2;
	  
	for(i=0;i<INDICE;i++) 
	{
		for(j=0;j<INDICE;j++)
		{
			if((c=getchar())!= '\n')
			{
				if(c==' ')
				{
					nesp++;
					j--;
					continue;
				}
				else
				{
					if(!strcmp(argv[1],"-s"))
					{
						convert=atoi(argv[2]);
						convert2=atoi(argv[3]);
						if(convert == (c - '0'))
							m[i][j]= convert;
						else
							m[i][j]= (c - '0');
					}
					if(!strcmp(argv[1],"-a"))
					{
						convert=atoi(argv[2]);
						(c - '0')+convert;
					}
				ncaracter++;
				}
				if(ncaracter!=nesp)
					{
						puts("ERRO3: COLOQUE ESPACOS ENTRE OS NUMEROS");
						return 0;
					}
				if(ncaracter>INDICE)
				{
					puts("ERRO2: A MATRIZ SO PODE TER 9 COLUNAS");
					return 0;
				}
			}
			else
			{
				nesp=1;
				ncaracter=0;
				continue;
			}
		}
		
	}
	c1=getchar();
	if(c1!='\n')
	{
		puts("ERRO4: PULE UMA LINHA ENTRE AS MATRIZES");
		return 0;
	}
	
	for(;i<((2*INDICE));i++) 
	{
		for(;j<((2*INDICE));j++)
		{
			if((c=getchar())!= '\n')
			{
				if(c==' ')
				{
					nesp++;
					j--;
					continue;
				}
				else
				{
					if(!strcmp(argv[1],"-s"))
					{
						convert=atoi(argv[2]);
						convert2=atoi(argv[3]);
						if(convert == (c - '0'))
							aux[i][j]= convert;
						else
							aux[i][j]= (c - '0');
					}
					if(!strcmp(argv[1],"-a"))
					{
						convert=atoi(argv[2]);
						aux[i][j]= (c - '0')+convert;
					}
					if(!strcmp(argv[1],"-m"))
						aux[i][j]= m[i][j]-(c - '0');
				}
				ncaracter++;
				if(ncaracter!=nesp)
					{
						puts("ERRO3: COLOQUE ESPACOS ENTRE OS NUMEROS");
						return 0;
					}
				if(ncaracter>INDICE)
				{
					puts("ERRO2: A MATRIZ SO PODE TER 9 COLUNAS");
					return 0;
				}
			}
			else
			{
				nesp=1;
				ncaracter=0;
				continue;
			}
			
		}
	}
	  
	p=m;
	pt=aux;
	  
	

	  //escrevendo os numeros
	  if(strcmp(argv[1],"-m"))
	  {
	   for(i=0;i<(INDICE*INDICE);i++)
		{
			
			if(!(i%INDICE))
			printf("\n");
			printf("%d ",*(p+i));
			
		}
	   printf("\n");
	  }
	
	
	for(i=0;i<(INDICE*INDICE);i++)
	{
		
		if(!(i%INDICE))
		 printf("\n");
		printf("%d ",*(pt+i));
		
	}
	printf("\n");
	printf("\n");
}


