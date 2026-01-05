program fatorialfunctionvalor;
uses crt;
var a,b,c:integer;d:char;
label 1;
function fatorial(y:integer):integer;
begin
    b:=1;
    for c:=1 to y do
    begin
    b:=b*c;
    end;
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