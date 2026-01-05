#include<iostream.h>

class funcao_por_referencia
{
      int x;
      public:
      int aumentar(int&);
};

int funcao_por_referencia::aumentar(int& y)
{
    y-=1;
}

int main()
{
    funcao_por_referencia a;
    int k=0;
    a.aumentar(k);  
    cout<<k<<endl;
    getchar();    
}
      

