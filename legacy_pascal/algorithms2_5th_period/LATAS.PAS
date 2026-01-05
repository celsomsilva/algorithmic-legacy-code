program latas;
uses crt;
var A1,A2,R:integer;
begin
write('Escreva o valor de R: ');
readln(R);
A1:=10 div (2*R);
A1:=A1*A1;
A2:=8 div (2*R);
A2:=A2*A2;
writeln('No andar 1 cabem ',A1,' latas');
writeln('No andar 2 cabem ',A2,' latas');
writeln;
writeln;
end.
