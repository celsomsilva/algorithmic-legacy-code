program Funcao;
uses crt;
var n:integer;
function fatorial (n:integer):real;
var
i:integer;fat:real;
begin
i:=1;
fat:=1;
for i:=1 to n do
fat:=fat*i;
fatorial:=fat;
end;
begin
writeln('PROGRAMA FATORIAL');
writeln('Escreva um n£mero inteiro');
readln(n);
writeln(fatorial(n):0:0);
readkey;
end.