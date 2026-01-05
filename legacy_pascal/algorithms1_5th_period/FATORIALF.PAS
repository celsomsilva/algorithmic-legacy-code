program fatorialfunctionreferencia;
uses crt;
var a:integer;d:char;
label 1;
function fatorial(var y:integer):integer;
var b,c:integer;
begin
    b:=1;
    for c:=1 to y do
    begin
    b:=b*c;
    end;
    y:=b {coloquei essa linha s¢ para mostrar que qdo 'y'='b', 'a' tb}
end;
begin
clrscr;
1:write('Escreva o numero: ');
readln(a);
fatorial(a);
writeln('O valor e: ',a);
writeln('Deseja continuar?(s/n)');
readln(d);
if d='s' then
goto 1;
end.