#include<stdio.h>
# define MAX 100
void strcpy(char *, char *);
main()
char

/* strcpy: copia t para s; versao com vetor subscrito */ 
/*strcpy(char *s, char *t)
{
 int i;
 i = 0; 
 while ((s[i] = t[i]) != '\0')
  i++;
} 
 
/* strcpy: copia t para s; versao apontador 1 */ 
/*void strcpy(char *s, char *t) 
{
 int i; 
 i = 0; 
 while ((*s = *t) != '\0') 
 {
  s++; 
  t++; 
 } 
} 

/* strcpy: copia t para s; versao apontador 2 */ 
/*void strcpy(char *s, char *t) 
{
 while ((*s++ = *t++) != '\0') 
  ; 
}
 
 /* strcpy: copia t para s; versao apontador 3 */ 
void strcpy(char *s, char *t) 
{
 while (*s++ = *t++)
  ; 
}
