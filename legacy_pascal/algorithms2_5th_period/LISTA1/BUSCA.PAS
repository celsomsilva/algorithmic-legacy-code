program busca;
uses crt;
var vetor:array[1..100] of integer;i,j,n,x:integer;
begin
write('ESCREVA O NUMERO DE ELEMENTOS DO VETOR: ');
readln(n);
write('ESCREVA, EM ORDEM CRESCENTE, ');
for i:=1 to n do
 begin
 write('O ',i,'o. ELEMENTO DO VETOR: ');
 readln(vetor[i]);
 end;
write('ESCREVA UM ELEMENTO PARA PROCURA: ');
readln(x);
j:=n;
while vetor[j]<>x do
begin
 if vetor[j]<x then
   j:=(n+j) div 2
 else
 begin
  n:=j;
  j:=j div 2;
 end;
end;
writeln('O ELEMENTO ',vetor[j],' E O ',j,'o. ELEMENTO DO VETOR');
writeln;
readkey;
end.