program caminhao2;
uses crt;
var lado1,lado2,i,j,k:integer;vetor,vetor2:array [1..4] of integer;
begin
lado1:=4;
for i:=1 to lado1 do
begin
write('ENTRE COM O VALOR DO ',i,'o. CAMINHAO: ');
readln(vetor[i]);
end;
write('ENTRE COM O LADO DA EMBALAGEM: ');
readln(lado2);
for i:=1 to lado1 do
vetor2[i]:=(vetor[i] mod lado2);
k:=1;
for i:=2 to lado1 do
begin
j:=vetor2[i];
if vetor2[k]>vetor2[i] then
begin
if j<vetor2[i-1] then
k:=i
else k:=i-1;
end;
end;
writeln('O CAMINHAO QUE TEM MENOR DISPERDICIO E O No. ',k,' DE LADO ',vetor[k]);
end.