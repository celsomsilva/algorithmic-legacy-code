program fatorial;
uses crt;
var i,fat,n:longint;a:char;
label 1;
begin
clrscr;
1:write('ENTRE COM O NUMERO A SER FATORADO: ');
readln(i);
fat:=1;
for n:=1 to i do
fat:=fat*n;
writeln('O FATORIAL E ',fat);
writeln('DESEJA CONTINUAR?(S/N): ');
readln(a);
if (a='S') then
goto 1;
end.