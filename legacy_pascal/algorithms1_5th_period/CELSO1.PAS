program progressao;
uses crt;
var a,b,c,d,e,n:integer;
procedure prog;
begin
n:=0;
while (e<c) do
begin
d:=a+(n*b);
e:=e+d;
n:=n+1;
end;
end;
begin
write('Escreva o primeiro termo da progressao: ');
readln(a);
write('Escreva a razao da progressao: ');
readln(b);
write('Escreva o valor F: ');
readln(c);
prog;
writeln ('O valor e: ',e)
end.


