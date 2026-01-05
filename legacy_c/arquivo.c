/*
O ficheiro XML fica deste tipo:


CODE  
<GestCD>
<2>
 <CD>
  <Codigo CD> 1 </Codigo CD>
  <Nome> Never Die Alone </Nome>
  <Emprestado a>  </Emprestado a>
</2>
<GestCD> 



Tudo o q o Bagulho disse está correcto, mas só queria acrescentar que nada é carregado para a memoria, estive pra fazer isso mas dp vi q dava mais trabalho visto q qd alocava qq coisa na memoria posteriormente teria q gravar no ficheiro q tinha mandado para a memoria, assim grava logo no ficheiro .dat (binario). 
*/

/***********************************************
*                                             *
*         Aplicação de Gestão de CDS          *
*                                             *
* Plataforma: Linux                           *
* Compilador: GCC                             *
* Copyright: ServeR Corporation            *
*                 *
***********************************************/
#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
#include <time.h>
#include <string.h>
#include <conio.h>

typedef struct CD{
int cod;
char nome[30];
char cat[2];
char emp[30];
}CD;

const CD regVazio={0,"",0,""};

void delay(double seconds)
{ 
clock_t ticks = seconds * CLOCKS_PER_SEC; 
clock_t start = clock();
while (clock() - start < ticks);
}

void gotoxy(int x, int y)
{
COORD coor;
HANDLE hOutput;
hOutput = GetStdHandle(STD_OUTPUT_HANDLE);
coor.X = x;
coor.Y = y;
SetConsoleCursorPosition(hOutput,coor);
}

void criar_fx()
{
FILE *cds;
cds=fopen("cds.dat","rb");
if(cds==NULL)
{
 cds=fopen("cds.dat","wb");
 fclose(cds);
 return;
}
fclose(cds);
}

void inserir()
{
int p;
char op;
char op1;
CD c;
FILE *fp;
fp=fopen("cds.dat","rb");
if(fp==NULL)
{
 printf("Ocorreu um erro na abertura do ficheiro\n\n");
 printf("Deseja recriar o ficheiro? SIM(1) NAO(2) ");
 scanf("%d",&p);
 if(p==1)
 {
  fp=fopen("cds.dat","wb");
  fclose(fp);
  printf("Ficheiro recriado com sucesso, por favor reinicie a \naplicacao para que as alteracoes tenham efeito\n\n");
  exit(1);
 }
 else
  exit(1);
}
system("cls");
printf("INSERIR CD NA BASE DE DADOS\n");
printf("===========================\n");
fp = fopen("cds.dat","a+");
gotoxy(40,10);printf("===========INFORMACOES===========");
gotoxy(40,11);printf("= Codigo do CD                  =");
gotoxy(40,12);printf("=                               =");
gotoxy(40,13);printf("=================================");
gotoxy(0,3);
printf("CODIGO CD: ");
scanf("%d",&c.cod);
fflush(stdin);
gotoxy(40,10);printf("===========INFORMACOES===========");
gotoxy(40,11);printf("= Nome do CD                    =");
gotoxy(40,12);printf("=                               =");
gotoxy(40,13);printf("=================================");
gotoxy(0,5);
printf("NOME CD: ");
fflush(stdin);
gets(c.nome);
fflush(stdin);
gotoxy(40,10);printf("===========INFORMACOES===========");
gotoxy(40,11);printf("= (1) Filme   (2) Programa      =");
gotoxy(40,12);printf("= (3) Jogo    (4) Audio         =");
gotoxy(40,13);printf("=================================");
gotoxy(0,7); 
printf("CATEGORIA: ");
gets(c.cat);
fflush(stdin);
gotoxy(0,9);
printf("O CD esta emprestado? (s/n): ");
scanf("%c",&op1);
fflush(stdin);
if(op1=='s' || op1=='S')
{
 gotoxy(0,9);printf("                               ");
 gotoxy(40,10);printf("===========INFORMACOES===========");
 gotoxy(40,11);printf("= Nome de quem tem o CD         =");
 gotoxy(40,12);printf("=                               =");
 gotoxy(40,13);printf("=================================");
 gotoxy(0,9);
 printf("EMPRESTADO A: ");
 gets(c.emp);
 fflush(stdin);
}
else
{
 strcpy(c.emp,"");
}
fwrite(&c,sizeof(c),1,fp);
fclose(fp);
system("cls"); 
printf("CD inserido com exito!\n\n\n"); 
system("cls"); 
fflush(stdin);
printf("Queres inserir outro CD? (s/n): "); 
scanf("%c",&op);
fflush(stdin);
if(op=='s' || op=='S')
{
 system("cls");
 inserir();
}
}

void remover()
{
FILE *fp;
CD c;
char linha[80];
int existe=0,num;
long pos=0;
fp=fopen("cds.dat","r+b");
if( fp==NULL )
{
 printf("Erro ao abrir ficheiro\n");
 return;
}
printf("CODIGO CD A REMOVER: ");
fgets(linha,sizeof(linha),stdin);
fflush(stdin);
scanf("%d",&num);
fflush(stdin);
while( fread(&c,sizeof(c),1,fp) == 1 ){
 if( c.cod==num)
 {
  existe=1;
  fseek(fp, pos, SEEK_SET);
  if(fwrite(&regVazio,sizeof(c),1,fp ) != 1)
  {
   printf("Erro ao remover o CD!\n" );
   fclose(fp);
   return;
  } 
 break;
 }
 pos=ftell(fp);
}
if(!existe)
 printf("O CD nao existe!\n" );
fclose( fp);
system("cls");
printf("CD Removido com exito!\n"); 
getch();
}


void listar_todos_cds()
{
FILE *fp;
CD c;
fp=fopen("cds.dat","rb");
if(fp==NULL) 
{
 printf("ERRO\n");
 exit(1);
}
printf("LISTAGEM DE TODOS OS CDS\n");
printf("========================\n\n");
printf("%-12s%-30s%-20s%-5s\n","Codigo","Nome CD","Categoria"," Emprestado a");//Cabeçalho da listagem
printf("---------------------------------------------------------------------------\n");
while (fread(&c,sizeof (c),1,fp))
{
 if(c.cod!=0)
  printf("%-12d%-30s%-20s %-5s\n",c.cod,c.nome,c.cat,c.emp);
}
fclose(fp);
getch();
}

void criar_xml()
{ 
FILE *fp;
FILE *xml;
CD c;
char cat[2];
fp=fopen("cds.dat","rb");
xml=fopen("cds.xml","r");
if(fp==NULL || xml==NULL)
{
 printf("Impossivel abrir ficheiros");
 xml=fopen("cds.xml","w+");
 fclose(xml);
 exit(1);
}
xml=fopen("cds.xml","w+");
   fp=fopen("cds.dat","rb+");
fflush(stdin);
printf("Insira a categoria que pretende: ");
scanf("%d",&cat);
fflush(stdin);
   fread(&c,sizeof c,1,fp);
fprintf(xml,"<GestCD>\n");
while(!feof(fp))
{
 if(strcmp(c.cat,cat))
 {
  fprintf(xml,"\t<%d>\n",c.cat);
  fprintf(xml,"\t\t<CD>\n");
  fprintf(xml,"\t\t\t<Codigo CD> %d </Codigo CD>\n",c.cod);
  fprintf(xml,"\t\t\t<Nome> %s </Nome>\n",c.nome);
  fprintf(xml,"\t\t\t<Emprestado a> %s </Emprestado a>\n",c.emp);
  fprintf(xml,"\t</%d>\n",c.cat);
 }
 fread(&c,sizeof c,1,fp);
}
fprintf(xml,"<GestCD>\n");
system("cls");
printf("XML Criado Com Sucesso");
fclose(fp);
fclose(xml); 
getch();
}

void loading()
{
system("cls");
gotoxy(30,12);
printf("A CARREGAR PROGRAMA");
gotoxy(30,14);printf("===================\n");
gotoxy(30,15);printf("                   \n");
gotoxy(30,16);printf("===================\n");
gotoxy(30,15);printf(">>>>>");delay(0.1);gotoxy(30,15);
printf(" >>>>>");delay(0.1);gotoxy(30,15);printf("  >>>>>");
delay(0.1);gotoxy(30,15);printf("   >>>>>");delay(0.1);
gotoxy(30,15);printf("    >>>>>");delay(0.1);gotoxy(30,15);
printf("     >>>>>");delay(0.1);gotoxy(30,15);printf("      >>>>>");
delay(0.1);gotoxy(30,15);printf("       >>>>>");delay(0.1);
gotoxy(30,15);printf("        >>>>>");delay(0.1);gotoxy(30,15);
printf("         >>>>>");delay(0.1);gotoxy(30,15);printf("          >>>>>");
delay(0.1);gotoxy(30,15);printf("           >>>>>");delay(0.1);gotoxy(30,15);
printf("            >>>>>");delay(0.1);gotoxy(30,15);printf("             >>>>>");
delay(0.1);gotoxy(30,15);printf("              >>>>>");
}

void sair()
{
system("cls");
gotoxy(30,12);
printf("A FECHAR PROGRAMA");
gotoxy(30,14);printf("=================\n");
gotoxy(30,15);printf("                   \n");
gotoxy(30,16);printf("=================\n");
gotoxy(30,15);printf(">>>");delay(0.1);gotoxy(30,15);
printf(" >>>");delay(0.1);gotoxy(30,15);printf("  >>>");
delay(0.1);gotoxy(30,15);printf("   >>>");delay(0.1);
gotoxy(30,15);printf("    >>>");delay(0.1);gotoxy(30,15);
printf("     >>>");delay(0.1);gotoxy(30,15);printf("      >>>");
delay(0.1);gotoxy(30,15);printf("       >>>");delay(0.1);
gotoxy(30,15);printf("        >>>");delay(0.1);gotoxy(30,15);
printf("         >>>");delay(0.1);gotoxy(30,15);printf("          >>>");
delay(0.1);gotoxy(30,15);printf("           >>>");delay(0.1);gotoxy(30,15);
printf("            >>>");delay(0.1);gotoxy(30,15);printf("             >>>");
delay(0.1);gotoxy(30,15);printf("              >>>");
}

menu()
{
int menu;
do
{
 system("cls");
 gotoxy(35,1);
 printf("GESTAO DE CDS");
 gotoxy(27,4);
 printf("1 - Inserir CD");
 gotoxy(27,6);
 printf("2 - Emprestar CD");
 gotoxy(27,8);
 printf("3 - Remover CD");
 gotoxy(27,10);
 printf("4 - Listar CDS");
 gotoxy(27,12);
 printf("5 - Criar Ficheiro XML");
 gotoxy(27,14);
 printf("0 - Sair");
 gotoxy(0,24);
 printf("Operacao pretendida: ");
 scanf("%d",&menu);
 switch(menu)
 {
 case 1: system("cls");
   inserir();
   getchar();
   break;
 case 2: system("cls");
   printf("Em processamento");
   break;
 case 3: system("cls");
   remover();
   break;
 case 4: system("cls");
   listar_todos_cds();
   break;
 case 5: system("cls");
   criar_xml();
   break;
 }
}
while(menu!=0);
}

main()
{
loading();
menu();
sair();
gotoxy(0,23);
exit(50);
}
