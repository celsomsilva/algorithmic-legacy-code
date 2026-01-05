{terminar a procedure e fazer outra com o nome estoque local a venda assim: controle de estoque - atualiza 
estoque; visualiza estoque}
program empresa;
uses crt;
var a,b,c,d:real;i,e,nota,x,y:integer;custo,venda,taxa:array [1..3] of real;nome:array [1..3] of string;estoque:array [1..3]of integer;
procedure vendas;
var data,produto:string;product,quantidade:integer;
 procedure estoques;
 begin
 estoque[product]:=estoque[product]-quantidade; 
 writeln(estoque[product]);
 end;
begin
nota:=nota+1;
write('Informe o produto (e a quantidade) a ser vendido:');
readln(produto);
readln(quantidade);
write('Informe a data(dd/mm/aaaa): ');
readln(data);
for i:=1 to 3 do
 begin
 if (produto=nome[i]) then
 product:=i;
 end;
writeln('Nota no.',nota);
writeln('Data: ',data);
writeln('Quantidade do Produto: ',quantidade);
writeln('Nome do Produto: ',produto);
writeln('Preco unitario: ',venda[product]:5:2);
writeln('Preco total: ',quantidade*venda[product]:5:2);
writeln('ICMS: ',taxa[product]:2:2);
estoques;
end;
begin
for i:=1 to 3 do
 begin
 write('Escreva o nome do ',i,'o. produto: ');
 readln(nome[i]);
 write('Escreva o preco de custo do produto: ');
 readln(custo[i]);
 write('Escreva o preco de venda do produto: ');
 readln(venda[i]);
 write('Escreva o quantidade em estoque do produto: ');
 readln(estoque[i]);
 write('Escreva a taxa do ICMS: ');
 readln(taxa[i]);
 end;
clrscr;
a:=1;
x:=1;
y:=1;
for i:=1 to 3 do
 begin
 gotoxy(x,y);
 writeln(i,'o. produto:');
 gotoxy(x,y+1);
 writeln('Nome: ',nome[i]);
 gotoxy(x,y+2);
 writeln('Custo do Produto: ',custo[i]:2:2);
 a:=a*custo[i];
 b:=venda[i]-custo[i];
 gotoxy(x,y+3);
 writeln('Preco de Venda: ',venda[i]:2:2);
 gotoxy(x,y+4);
 writeln('Quantidade em estoque: ',estoque[i]);
 gotoxy(x,y+5);
 writeln('Taxa do ICMS: ',taxa[i]:2:2);
 d:=d+taxa[i];
 c:=b+c;
 if ((venda[i]-custo[i])>(venda[i-1]-custo[i-1])) then
  begin
  e:=i; 
  writeln;
  end;
 x:=x+26;
 end;
writeln;
writeln('Capital Imobilizado: ',a:2:2);
writeln('Previsao de lucro: ',c:2:2);
writeln('Imposto Total: ',d:2:2);
writeln('Produto de Maior lucro: ',e,'o. produto');
writeln;
vendas;
end.