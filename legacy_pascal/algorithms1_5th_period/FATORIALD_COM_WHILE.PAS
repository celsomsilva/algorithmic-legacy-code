program fatorial2;
uses crt;
var a,b,c:integer;d:char;
procedure fatorial(numero:integer);
begin
    b:=1;
    for c:=1 to numero do
    b:=b*c;
end;
begin
d:='s';
while (d='s') do
begin
write('Escreva o numero: ');
readln(a);
fatorial(a);
writeln('O valor e: ',b);
writeln('Deseja continuar?(s/n)');
readln(d);
end;
end.





 