#include<stdio.h>
#include<stdlib.h>

main(int arg,char *argv[])
{
	int m[9][9];
	int aux[9][9];
	int i,j,*p,*pt,c,c1,nesp = 1,ncaracter = 0,nenter = 0,convert,convert2;
	  
	for(i=0;i<9;i++) 
	{
		for(j=0;j<9;j++)
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
					if(argv[1]=="-s")
					{
						convert=atoi(argv[2]);
						convert2=atoi(argv[3]);
						if(convert == (c - '0'))
							m[i][j]= convert;
						else
							m[i][j]= (c - '0');
					}
					if(argv[1]=="-a")
					{
						convert=atoi(argv[2]);
						m[i][j]= (c - '0')+convert;
					}
				}
				ncaracter++;
				if(ncaracter!=nesp)
					{
						puts("ERRO3: COLOQUE ESPACOS ENTRE OS NUMEROS");
						return 0;
					}
				if(ncaracter>9)
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
	
	for(;i<17;i++) 
	{
		for(;j<17;j++)
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
					if(argv[1]=="-s")
					{
						convert=atoi(argv[2]);
						convert2=atoi(argv[3]);
						if(convert == (c - '0'))
							aux[i][j]= convert;
						else
							aux[i][j]= (c - '0');
					}
					if(argv[1]=="-a")
					{
						convert=atoi(argv[2]);
						aux[i][j]= (c - '0')+convert;
					}
					if(argv[1]=="-m")
						aux[i][j]= m[i][j]-(c - '0');
				}
				ncaracter++;
				if(ncaracter!=nesp)
					{
						puts("ERRO3: COLOQUE ESPACOS ENTRE OS NUMEROS");
						return 0;
					}
				if(ncaracter>9)
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
	  if(argv[1]!="-m")
	  {
	   for(i=0;i<81;i++)
		{
			
			if(!(i%9))
			printf("\n");
			printf("%d ",*(p+i));
			
		}
	   printf("\n");
	  }
	
	
	for(i=0;i<81;i++)
	{
		
		if(!(i%9))
		 printf("\n");
		printf("%d ",*(pt+i));
		
	}
	printf("\n");
	printf("\n");
}


