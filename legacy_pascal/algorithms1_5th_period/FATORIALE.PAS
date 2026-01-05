program fatorial;
uses crt;
var a,b,c:integer;d:char;
label 1;
procedure fatorial(var x:integer);
begin
    b:=1;
    for c:=1 to x do
     begin
     b:=b*c;
     end;
    x:=b; {coloquei essa linha s¢ para mostrar que qdo 'x'='b', 'a' tb}
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