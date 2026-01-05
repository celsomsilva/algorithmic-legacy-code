program fatorialcomgoto;
uses crt;
var a,b,c:integer;d:char;
label 1;
procedure fatorial(numero:integer);
begin
    b:=1;
    for c:=1 to numero do
    b:=b*c;
end;
begin
clrscr;
1:write('Escreva o numero: ');
readln(a);
fatorial(a);
writeln('O valor e: ',b);
writeln('Deseja continuar?(s/n)');
readln(d);
if d='s' then
goto 1;
end.