Program Dividir;
uses crt;
var i,n:integer;
begin
write('Escreva o N£mero: ');readln(n);
for i:=1 to n do
if i mod 6=0 then
writeln (i:2,' ‚ divis¡vel por 6');
writeln('Tecle <ENTER> para encerrar');
readln;
end.