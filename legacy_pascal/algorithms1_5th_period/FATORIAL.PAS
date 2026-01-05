program fatorial;
var a,b:longint;
begin
writeln('Escreva o numero a ser fatorado: ');
readln(a);
b:=1;
while(a>1) do
begin
b:=b*a;
a:=a-1;
end;
writeln('O valor do fatorial e: ',b);
end.