//gcc calculadora.c -lm -o calculadora
#include <stdio.h>
#include <math.h>
#include <stdlib.h> /* para atof()<converte string em double>*/
#define PI 3.14159265358
#define MAXOP 100 /* max size of operand or operator */
#define NUMBER '0' /* signal that a number was found */

    int getop(char []);
    void push(double);
    double pop(void);

main()
{
    int type,i=0,j=0;
    double op2;
    char s[MAXOP];

    printf("***********************************************************************************\n    *****************************CALULADORA************************************\n*************************PARA FUNCIONAR SIGA AS INSTRUCOES:************************\n*COLOQUE O(S) NUMERO(S) PARA A OPERACAO, SEMPRE TECLANDO <ENTER> APOS CADA UM,*****\n*DEPOIS COLOQUE O OPERADOR<ENTER>. OS OPERADORES SÃO AS QUATRO OPERACOES BASICAS E*\n*MAIS ESTAS A SEGUIR: s:SENO;c:COSSENO;t:TANGENTE;r:RAIZ QUADRADA;S:ARCOSENO;C:****\n*ARCOCOSSENO;T:ARCOTANGENTE;e:EXPONENCIAL (BASE NEPERIANA);p:POTENCIA;l:LOGARITMO**\n*NA BASE 10;L:LOGARITMO NEPERIANO**************************************************\n*************************OBS: OS ANGULOS SÃO EM GRAUS******************************\n***********************************************************************************\n");
    while ((type = getop(s)) != EOF) 
    {
	switch (type) 
	{
	case 's':
	    push(sin(pop()*PI/180));
	    i++;//pq a funcao soh tem um operando
	    break;
	case 'c':
	    push(cos(pop()*PI/180));
	    i++;
	    break;
	case 't':
	    push(tan(pop()*PI/180));
	    i++;
	    break;
	case 'r':
	    push(sqrt(pop()));
	    i++;
	    break;
	case 'S':
	    push(asin(pop()*PI/180));
	    i++;
	    break;
	case 'C':
	    push(acos(pop()*PI/180));
	    i++;
	    break;
	case 'T':
	    push(atan(pop()*PI/180));
	    i++;
	    break;
	case 'e':
	    push(exp(pop()));
	    i++;
	    break;
	case 'p':
	    push(pow(pop(),pop()));
	    break;
	case 'l':
	    push(log10(pop()));
	    i++;
	    break;
	case 'L':
	    push(log(pop()));
	    i++;
	    break;
	case NUMBER:
	    if(j==0)
	    	push(atof(s));//push guarda na pilha;pop retira da pilha
	    else
	    {
	    	push(-(atof(s)));
		j=0;
	    }
	    break;
	case '+':
	    push(pop() + pop());
	    break;
	case '*':
	    push(pop()*pop());
	    break;
	case '-':
	    if(i==2)
	    {
	    	op2 = pop();
	    	push(pop() - op2);
	    }
	    else
	    	j=1;
	    break;
	case '/':
	    op2 = pop();
	    if (op2 != 0.0)
		push(pop() / op2);
	    else
		printf("error: zero divisor\n");
	    break;
	case '\n':
	    i++;
	    if(i==3)
	    {
	    printf("\t%.8g\n", pop());
	    i=0;
	    }
	    break;
	derfault:
	    printf("error: unknown command %s\n", s);
	    break;
	}
    }
return 0;

}

#define MAXVAL 100 /*maximum depth of val stick */

    int sp = 0; /* next free stack position */
    double val [MAXVAL]; /* value stack */


/* push: push f onto value stack */

void push(double f)
{
    if (sp < MAXVAL)
	val[sp++] = f;
    else
	printf("error: stack full, can't push again %g\n", f);//pilha cheia
}

/* pop: pop and return top value from stack */

double pop(void)
{
    if (sp > 0)
	return val[--sp];
    else {
	printf("error: stack empty\n");//pilha vazia
	return 0.0;
	}
}


#include <ctype.h>
    int getch(void);
    void ungetch(int);


/* getop: pega proximo caracter ou operando numerico*/

int getop(char s[])
{
    int i, c;

    while ((s[0] = c = getch()) == ' ' || c == '\t') /*pulando as tabulacoes*/
	;
    s[1] = '\0';
    if (!isdigit(c) && c != '.')
	return c;   /*nao he um numero*/
    i = 0;
    if (isdigit(c))   /*coleta a parte inteira*/
	while(isdigit(s[++i] = c = getch()))
	    ;
    if (c == '.')   /*coleta a parte decimal*/
	while (isdigit(s[++i] = c = getch()))
	    ;
    s[i] = '\0';
    if (c != EOF)
	ungetch(c);
    return NUMBER;
}

#define BUFSIZE 100

char buf[BUFSIZE];   /*do buffer para ungetch*/
int bufp = 0;   /*proxima posicao livre in buf*/


int getch(void)   //pegar um (possivelmente o anterior) caracter
{
    return (bufp > 0) ? buf[--bufp] : getchar();
}

void ungetch(int c)   //joga o caracter anterior na entrada
{
    if (bufp >= BUFSIZE)
	printf("ungetch: too many characters\n");
    else
	buf[bufp++] = c;
}

