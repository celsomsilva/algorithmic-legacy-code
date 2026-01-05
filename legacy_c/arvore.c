//modificar e apresentar tb as linhas em que cada noh esta(isto eh uma arvore)

struct tnode //o noh da arvore
{
 char *word;  //ponteiros para o texto
 int count; //numero de ocorrencias
 struct tnode *left; // filho direiro
 struct tnode *right; // filho esquerdo
};

#include<stdio.h>
#include<ctype.h>
#include<string.h>
#define MAXWORD 100
struct tnode *addtree(struct tnode *,char *);
void treeprint(struct tnode *);
int getword(char *,int);

main()//word frequency count
{
 struct tnode *root;
 char word[MAXWORD];

 root=NULL;
 while(getword(word,MAXWORD)!=EOF)
  if(isalpha(word[0]))
   root=addtree(root,word);
 treeprint(root);
 return 0;
 }

 struct tnode *talloc(void);
 char *strdup2(char *);

 //addtree: add a node with w, at or below p
 struct tnode *addtree(struct tnode *p,char *w)
 {
  int cond;

  if(p==NULL)//a new word has arrived
  {
   p=talloc();// faz um novo noh
   p->word=strdup2(w);
   p->count=1;
   p->left=p->right=NULL;
  }
  else if((cond=strcmp(w,p->word))==0)
   p->count++;//repeated word
  else if(cond<0)//less than into left subtree
   p->left=addtree(p->left,w);
  else//greater than into right subtree
   p->right=addtree(p->right,w);
  return p;
 }

//treeprint: in-order print of tree p
void treeprint(struct tnode *p)
{
 if(p!=NULL)
 {
  treeprint(p->left);
  printf("%4d %s\n",p->right);
  treeprint(p->right);
 }
}

//getword: get proxima palavra ou caracter  from input
int getword(char *word,int lim)
{
 int c,getch(void);
 void ungetch(int);
 char *w=word;

 while(isspace(c=getch()))
  ;
 if(c!=EOF)
  *w++=c;
 if(!isalpha(c))
 {
  *w='\0';
  return c;
 }
 for(;--lim>0;w++)
  if(!isalnum(*w=getch()))
  {
   ungetch(*w);
   break;
  }
 *w='\0';
 return word[0];
}

#include<stdlib.h>

//talloc: faz um tnode
struct tnode *talloc(void)
{
 return(struct tnode *) malloc(sizeof(struct tnode));
}

char *strdup2(char *s) //faz uma copia de s
{
 char *p;

 p=(char *) malloc(strlen(s)+1);//+1 for '\0'
  if(p!=NULL)
   strcpy(p,s);
  return p;
}

#define BUFSIZE 100
char buf[BUFSIZE];//do buffer para ungetch
int bufp=0;//proxima posicao livre in buf

int getch(void) //pegar um (possivelmente a anterior) caracter
{
 return(bufp>0)?buf[--bufp]:getchar();
}

void ungetch(int c) //joga o caracter anterior na entrada
{
 if(bufp>=BUFSIZE)
  printf("ungetch: too many characters\n");
 else
  buf[bufp++]=c;
}
