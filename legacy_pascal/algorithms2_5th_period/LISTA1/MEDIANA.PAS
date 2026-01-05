program mediana;
uses crt;
var vetor:array[1..100] of real;i,j,n:integer;
begin
write('ESCREVA O NUMERO DE ELEMENTOS DO VETOR: ');
readln(n);
for i:=1 to n do
 begin
 write('ESCREVA O ',i,'o. ELEMENTO DO VETOR: ');
 readln(vetor[i]);
 end;
j:=(n div 2)+1;
writeln('A MEDIANA DO VETOR E: ',vetor[j]:3:2);
readkey;
end.