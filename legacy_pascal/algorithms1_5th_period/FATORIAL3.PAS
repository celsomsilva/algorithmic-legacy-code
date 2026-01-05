program fatorial3;
var x,i,j,n,fat:longint;y:real;
begin
writeln('Escreva o valor de n: ');
readln(n);
writeln('Escreva o valor de x: ');
readln(x);
for i:=1 to n do
begin
fat:=1;
for j:=1 to i do
begin
fat:=fat*j;
end;
y:=y+(x+i)/fat;
end;
writeln('O resultado e: ',y:10:3);
end.