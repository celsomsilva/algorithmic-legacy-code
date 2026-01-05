program empresa2;
uses crt;
type
estoque=record
    nome:string;
    quantidade:integer;
    end;
produto=record
    descricao:estoque;
    custo,venda,icms:real;
    end;
var produtos:array [1..10] of produto;i,a:integer;
begin
a:=1;
for i:=1 to 3 do
 begin
 write('Escreva o nome, quantidade, custo do produto, preco de venda e icms do ',i,'o. produto: ');
 readln(produtos[i].descricao.nome);
 readln(produtos[i].descricao.quantidade);
 readln(produtos[i].custo);
 readln(produtos[i].venda);
 readln(produtos[i].icms);
 writeln;
 end;
clrscr;
for i:=1 to 3 do
 begin
 gotoxy(a,1);
 write(produtos[i].descricao.nome);
 gotoxy(a,2);
 write(produtos[i].descricao.quantidade);
 gotoxy(a,3);
 write(produtos[i].custo:2:2);
 gotoxy(a,4);
 write(produtos[i].venda:2:2);
 gotoxy(a,5);
 write(produtos[i].icms:2:2);
 a:=a+30;
 end;
writeln;
writeln;
end.