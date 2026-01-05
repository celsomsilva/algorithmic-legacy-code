program caminhao3;
uses crt;
procedure caminhao2;
var i,j:integer;vetor1,vetor2,vetor3:array [1..4] of integer;
begin
for  i:=1 to 4 do
begin
gotoxy(1,10);
write('Entre com a dimensao da embalagem: ');
readln(vetor1[i]);
write('Entre com a dimensao do caminhao: ');
readln(vetor2[i]);
j:=vetor2[i] div vetor1[i];
vetor3[i]:=j*j*j;
gotoxy(i,1);
write(vetor3[i]);
end;
end;
function caminhao3f:integer;
var lado1,lado2,i:integer;vetor,vetor2:array [1..4] of integer;
begin
gotoxy(1,10);
lado1:=4;
for i:=1 to lado1 do
begin
write('ENTRE COM O VALOR DO ',i,'o. CAMINHAO: ');
readln(vetor[i]);
end;
write('ENTRE COM O LADO DA EMBALAGEM: ');
readln(lado2);
for i:=1 to lado1 do
begin
vetor2[i]:=(vetor[i] mod lado2);
write(vetor2[i]);
gotoxy(i,4);
end;
end;
begin
clrscr;
caminhao2;
caminhao3f;
end.