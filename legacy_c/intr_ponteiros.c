//exemplo de ponteiros
#include<stdio.h>
main()
{
int x=1,y=2,i;
int z[10]={3,10,14,6,7,8,9,20,21,22};
int *ip,*xp;
ip=&y;// ip aponta pra y
printf("%d %d %d %d\n",*ip,x,y,z[0]);
x=*ip;//x recebe o valor do que eh apontado por ip
printf("%d %d %d %d\n",*ip,x,y,z[0]);
*ip=0;//o que eh apontado por ip (ou seja,y) recebe zero
printf("%d %d %d %d\n",*ip,x,y,z[0]);
ip=&z[0];//ip aponta pra z[0]
printf("%d %d %d %d\n",*ip,x,y,z[0]);
ip=ip+1;
printf("%d %d %d %d\n",*ip,x,y,z[0]);
*ip=*ip+1;
printf("%d %d %d %d\n\n\n",*ip,x,y,z[0]);
for(i=0;i<10;i++)
 printf("%d ",z[i]);
printf("\n");
x=getchar();
}
