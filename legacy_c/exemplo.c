#include<stdio.h>
main()
{
int c;
while((c=getchar())!=EOF)//EOF EH "ctlr d" E O RESTO DA INFORMACAO (MAIS DE UM CARACTER),
 {           //EH GUARDADA NO BUFFER ATE O EOF 
 putchar(c);
 }
}
