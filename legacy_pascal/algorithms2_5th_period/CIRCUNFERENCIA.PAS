program circunferencia;
const pi=3.14;
var R,quadrado:integer;perimetro,area:real;
begin
write('Escreva o valor de R:');
readln(R);
perimetro:=pi*2*R;
area:=pi*R*R;
quadrado:=R*R*4;
writeln('O VALOR DO PERIMETRO E ',perimetro:2:2,' E DA AREA E ',area:2:2);
writeln('O VALOR DA AREA DO QUADRADO E: ',quadrado);
writeln;
writeln;
end.