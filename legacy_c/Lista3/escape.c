#include<stdio.h>
#define MAX 100
void escape(char s[],char t[]);
void escape2(char u[],char t[]);
main()
{
char s[MAX],t[MAX],u[MAX];
int i=0;
printf("ESCREVA A STRING: ");
do
 {
 s[i]=getchar();
 i++;
 }
while(s[i-1]!=EOF);
s[i-1]='\0';
escape(s,t);
printf("\nSTRING CONVERTIDA: %s\n",t);
escape2(u,t);
printf("STRING DESCONVERTIDA: %s\n",u);
}

void escape(char s[],char t[])
{
int i,j=0;
for(i=0;s[j]!='\0';i++)
 switch (s[j])
  {
  case '\n':
   t[i]='\\';
   i++;
   t[i]='n';
   j++;
   break;
  case '\t':
   t[i]='\\';
   i++;
   t[i]='t';
   j++;
   break;
  default:
   t[i]=s[j];
   j++;
   break;
  }
t[i]='\\';
i++;
t[i]='0';// EU TB COLOQUEI, ALEM DE \n E \t, O FIM DA STRING VISIVEL
i++;
t[i]='\0'; 
}

void escape2(char u[],char t[])
{
int i,j=0;
for(i=0;t[j]!='\0';i++)
 if(t[j]=='\\')
  {
  j++;
  switch (t[j])
   {
   case 'n':
    u[i]='\n';
    j++;
    break;
   case 't':
    u[i]='\t';
    j++;
    break;
   case '0'://SOH PODE SER O SCAPE VISIVEL DE FINAL DA STRING
    j++;
    break;
   }
  } 
  else 
   {
   u[i]=t[j];
   j++;
   }
u[i]='\0';
}
