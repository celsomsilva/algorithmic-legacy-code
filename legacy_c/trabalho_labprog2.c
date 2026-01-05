# include <stdio.h>
# include <stdlib.h>

# define FIM 9
# define MAX 1000
# define BITS 30

int primo(int numero);
int fatora(int fator);
unsigned int aritModular(int base, int exp, int mod, int bin[]);
void binario(int decimal, int bin[]);
int getline(char s[], int lim);
int pot(int base,int n);

main(int argc, char *argv[]) {
	int i, flag, c, primo1, primo2, chPub1, chPub2, chDescripto;
	int continua, bin[BITS], tam, y, base, j=0, k=0;
	unsigned int n[MAX];
	char s[MAX], s2[9];
	
	//Verifica se o parametro de entrada deve criptografar ou descriptografar
	if (argc > 1 && (*++argv)[0] == '-') { 
		c = *++argv[0];
		switch (c) {
		case 'c':
			flag = 1;
			break;
 		case 'd':
			flag = 0;
			break;
		default:
			printf("Parametro incorreto\n");
			break;
		}
	}
	
	//Testa se os dois primos foram digitados
	if (argc == 4) {
		//Testa para ver se os números da entrada eram primos
		continua = 1;
		if (primo(atoi(argv[1])))
			primo1 = atoi(argv[1]);
		else {
			printf("O %d nao e primo!\n", atoi(argv[1]));
			continua = 0;
		}
		if (primo(atoi(argv[2])))
			primo2 = atoi(argv[2]);
		else {
			printf("O %d nao e primo!\n", atoi(argv[2]));
			continua = 0;
		}
	}
	else {
		printf("Por favor digite dois numero primos como entrada apos -c ou -d\n");
		continua = 0;
	}

		
	//Criação da chave publica
	if (continua) {
		chPub1 = primo1 * primo2;
		y = (primo1 - 1 )*(primo2 - 1);
		chPub2 = fatora(y);
		//Encontrar a chave de descriptografia
		//printf("\nO vetor s: %s\n\n", s);
		for(i = 0; i <= y; ++i)
			if((i*chPub2) % y == 1) {
				chDescripto = i;
				//Achou a chave
				i = y+1;
			}
		//printf("\nA chave publica tem dois parametros : %d %d\n", chPub1, chPub2);
		//printf("O Y e a chave de descripto: %d %d\n", y, chDescripto);
		
		// Recebe a primeira linha e as seguintes
		while((tam = getline(s,MAX)) > 0)
			if (flag) {
				//Criptografando
				for(i = 0; i <= (tam-1); ++i) {
	//				printf("ASCII : %d ", s[i]);
					n[i] = aritModular(s[i],chPub2, chPub1, bin);
				}
	//			printf("\n");
				for(i = 0; i <= (tam-1); ++i) 
					printf("%d ", n[i]);
			}
			else {
				//Descriptografando
				for(i = 0; i <= (tam-1); ++i) {
					if (s[i] != ' ') {
						s2[j] = s[i];
						++j;
					}
					else {
						s2[j]='\0';
						j=0;
						base = atoi(s2);
					n[k] = aritModular(base, chDescripto, chPub1, bin);
					++k;
					}
				}
				for(i = 0; i < k; ++i)
					   printf("%c", n[i]);
                k = 0;
			}
	}
	
}

int fatora(int fator) {
	int div;
	
	div = 2;
	while(fator > 1)
		if ((fator % div) == 0)
			fator /= div;
		else
			++div;
	++div;
	while (!(primo(div)))
		++div;
	return div;
}

int fatora2(int fator) {
	int div, i = 0;
	
	div = 2;
	while(fator > 1)
		if ((fator % div) == 0) {
			fator /= div;
			++i;
		}
	return i;
}


int primo(int numero) {
	int i, divisores;
    
	divisores = 0;
	for (i = 1; i <= numero; ++i)
		if (numero % i == 0)
	++divisores;
	if (divisores == 2)
		return 1;
	else
		return 0;
}

/*Função capaz de elevar numeros a expoentes 
muito grandes, usando aritimética modular */
unsigned int aritModular(int base, int exp, int mod, int bin[]) {
	int i, j, nucleo, vetBase[BITS];
	unsigned int valFinal;
	
	binario(exp, bin);                            
	valFinal = 1;
	nucleo = base % mod;
	vetBase[0] = nucleo;
	for(i = 0; bin[i] != FIM; ++i) {
		vetBase[i+1] = (pot(vetBase[i],2)) % mod;
		//printf("\nvetBase : %d\n",vetBase[i]);
	}
	for(i = 0; bin[i] != FIM; ++i)
		if(bin[i] == 1)
			valFinal = valFinal * vetBase[i];
	//printf("\nValor final : %u\n", valFinal%mod);
	return (valFinal%mod);          
}

/*Transforma um decimal em binário e põe seu resultado em um vetor
pode ser invertido com código comentado no mesmo*/
void binario(int decimal, int bin[]) {
	int i, j, temp;
    
	for(i = 0; decimal >= 1; ++i) {
		bin[i] = decimal % 2;
		decimal /= 2;
	}
	bin[i] = FIM;
	//Codigo para inverter o vetor
	/*--i;
	for(j = 0; j <= (i/2); ++j,--i) {
		temp = bin[j];
		bin[j] = bin[i];
		bin[i] = temp;      
	}*/
}

//Armazena uma linha em um vetor de char
int getline(char s[], int lim) {
	int c, i;
	
	i = 0;
	while (--lim > 0 && (c=getchar()) != EOF && c != '\n')
		s[i++] = c;
	if (c == '\n')
		s[i++] = c;
	s[i] = '\0';
	return i;
}

/* FUNCAO potencia: IMPLEMENTADA POIS A pow NAO FUNCIONA */	
int pot(int base,int n)
{
int i,p;
p=1;
for(i=1;i<=n;++i)
   p=p*base;
  return p;
}
