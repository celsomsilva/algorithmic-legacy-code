program teste;
uses crt;
var nome,i:string;idade:integer;arq:text;
begin
assign(arq,'celso.dat');
reset(arq);
while not eof(arq)  do
 begin
 readln(arq,nome);
 readln(arq,i);
 readln(arq,idade);
 writeln(nome);
 writeln(idade);
 end;
close(arq);
end.