program fatorial2;
var a,b,x:longint;
begin
writeln('Escreva o numero a ser fatorado: ');
readln(a);
b:=1;
for x:=1 to a do
begin
b:=b*x;
end;
writeln('Fatorial de ',a,'e: ',b);
end.
