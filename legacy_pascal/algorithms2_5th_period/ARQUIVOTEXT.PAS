program arquivtext;
uses crt;
type 
registro=record
    nome:string;
    idade:integer;
    salario:real;
    sexo:string;
    end;
var reg:registro;
    arquivo:text;
procedure criar;
begin
assign(arquivo,'edit.dat');
rewrite(arquivo);
writeln('ESCREVA O NOME: ');
read(reg.nome);
writeln(arquivo,reg.nome);
writeln('ESCREVA A IDADE: ');
read(reg.idade);
writeln(arquivo,reg.idade);
writeln('ESCREVA O SALARIO: ');
read(reg.salario);
writeln(arquivo,reg.salario);
writeln('ESCREVA O SEXO <M - MASCULINO;F - FEMININO>: ');
read(reg.sexo);
writeln(arquivo,reg.sexo);
close(arquivo);
end;
procedure ler;
begin
assign(arquivo,'edit.dat');
reset(arquivo);
readln(arquivo,reg.nome);
writeln(reg.nome);
readln(arquivo,reg.idade);
writeln(reg.idade);
readln(arquivo,reg.salario);
writeln(reg.salario:6:2);
readln(arquivo,reg.sexo);
writeln(reg.sexo);
end;
begin
criar;
ler;
end.