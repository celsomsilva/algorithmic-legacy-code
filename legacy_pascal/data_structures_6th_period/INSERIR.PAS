{criar uma lista linear, com descritor, de numeros inteiros. preencha-
-a com os inteiros de 1 a 10;inserir o valor 15 antes do quarto no da lista;
remover o ultimo no da lista;listar os nos da lista}
program listadescritor;
type elemento=record
     prox:^elemento;
     dado:integer;
     end;
     descritor=record
     i:^elemento;
     n:integer;
     f:^elemento;
     end;
     desc=^descritor;
var d:desc;p,q,prim:^elemento;i,n:integer;
begin
new(d);
new(q);
q^.prox:=nil;
q^.dado:=10;
d^.n:=10;
i:=9;
n:=9;
while i>0 do
 begin
 new(p);
 p^.dado:=n;
 p^.prox:=q;
 q:=p;
 i:=i-1;
 n:=n-1;
 end;
d^.i:=p;
while q^.prox<>nil do
q:=q^.prox;
d^.f:=q;
{inserindo:}
q:=p;
for i:=1 to 2 do
 q:=q^.prox;
q^.dado:=15;
{removendo}
for i:=1 to 6 do
 q:=q^.prox;
new(prim);
prim:=q^.prox;
d^.f:=q;
q^.prox:=nil;
dispose(prim);
{listar os nos}
q:=p;
i:=0;
while i<>10 do
 begin
 write(q^.dado);write(' ,');
 q:=q^.prox;
 i:=i+1;
 end;
end.
