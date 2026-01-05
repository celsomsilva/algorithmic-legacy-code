program bolha;
uses crt;
var i,j,k:integer;vetor,vetoraux:array [1..4] of integer;
begin
clrscr;
for i:=1 to 4 do
 begin
 write('ESCREVA O ',i,'o. DOS NUMEROS A SEREM ORDENADOS:');
 readln(vetor[i]);
 vetoraux[i]:=vetor[i];
 end;
for j:=1 to 3 do
begin
 for k:=1 to 3 do
 begin
  for i:=1 to 3 do
  begin
  if vetor[i]>vetor[i+1] then
   begin
   vetor[i]:=vetor[i+1];
   vetor[i+1]:=vetoraux[i];
   vetoraux[i]:=vetor[i];
   vetoraux[i+1]:=vetor[i+1];
   end;
  end;
 end;
end;
for i:=1 to 4 do
 writeln(vetor[i]);
readkey;
end.
