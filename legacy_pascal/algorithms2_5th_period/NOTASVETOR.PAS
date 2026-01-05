program notas;
uses crt;
var vetor:array [1..10] of real;i:integer;media,soma:real;
begin
for i:=1 to 10 do
 begin
 writeln('ENTRE COM A NOTA DO ',i,'o. ALUNO: ');
 readln(vetor[i]);
 soma:=soma+vetor[i];
 end;
media:=soma/10;
for i:=1 to 10 do
 begin
 if media<vetor[i] then
 writeln('O ',i,'o. ALUNO TEM NOTA ACIMA DA MEDIA');
 end;
end.