program Lista2;
uses crt;
type
v=array [1..20] of integer;
var
vetor:v;
z:boolean;
i,a,j,k,b:integer;
begin
for i:=1 to 20 do
    begin
    vetor[i]:=random(101);
    write(vetor[i],' ');
    delay(100);
    end;
writeln;
writeln('Tecle <ENTER> para ordenar');
readln;
i:=1;
j:=1;
while (i<20) do
begin
     while (j<20) do
      begin
     if (vetor[j] > vetor[j+1]) then
        begin
        a:=vetor[j];
        vetor[j]:=vetor[j+1];
        vetor[j+1]:=a;
        end;
     write(vetor[j],' ');
     delay(20);
     j:=j+1;
     end;
     writeln;
     j:=1;
     i:=i+1;
end;
writeln;
writeln;
writeln('Escreva um numero para a busca: ');
readln(b);
z:=false;
j:=i;
i:=1;
k:=k div 2;
while(b<>vetor[k]) and (j<>i) do
     begin
     write(vetor[k],' ');
     delay(500);
     if b>vetor[k] then
        i:=k+1
     else
        j:=k;
        k:=(i+j) div 2
     end;
write(vetor[k]);
writeln;
z:=b=vetor[k];
if z then
writeln('O numero digitado esta na posicao ',k)
else
writeln('O numero digitado nao existe no vetor');
writeln;
readkey;
end.