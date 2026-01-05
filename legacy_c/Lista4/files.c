#include<stdio.h>
main()
{
FILE *p;
char ch;
int i=0;
p=fopen("horario.xml","r");
while(i<10)
 {
 ch=fgetc(p);
 putchar(ch);
 if (ch=='\n')
  i++;
 } 
fclose(p);
}
