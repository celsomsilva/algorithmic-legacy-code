program fatorialsemparametros2;
uses crt;
var a,b,c:integer;d:char;
label 1;
function fatorial:integer;
begin
    b:=1;
    for c:=1 to a do
    begin
    b:=b*c;
    end;
end;
begin
clrscr;
1:write('Escreva o numero: ');
readln(a);
fatorial;
writeln('O valor e: ',b);
writeln('Deseja continuar?(s/n)');
readln(d);
if d='s' then
goto 1;
end.