program prova;
uses crt;
type
elemento=record
prod:string;
preco:integer;
end;
var arquivo:text;
dados:elemento;
arquivo2:file of elemento;
procedure questao2;
begin
write(arquivo2,dados);
end;
procedure questao2a;
begin
reset(arquivo2);
while not eof(arquivo2) do
begin
read(arquivo2,dados);
write(dados.prod);
writeln(dados.preco);
end;
end;
begin
assign(arquivo,'produtos.txt');
assign(arquivo2,'produtosf.dat');
reset(arquivo);
rewrite(arquivo2);
writeln('Preco|Nome');
while not eof(arquivo) do
begin
read(arquivo,dados.preco);
readln(arquivo,dados.prod);
questao2;
write(dados.preco);
writeln(dados.prod);
end;
close(arquivo);
close(arquivo2);
writeln;
writeln;
readkey;
questao2a;
end.