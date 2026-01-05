program matriz;
uses crt;
type
cod_aluno=record
nota:array [1..4] of real;
nome:string;
end;
var
aluno:array [1..2] of cod_aluno;
i,j:integer;
begin
writeln('PROGRAMA MATRIZ REAL');
for i:=1 to 2 do
begin
writeln('Escreva o nome do aluno');
readln(aluno[i].nome);
for j:=1 to 4 do
begin
writeln('Escreva a ',j,'a. nota do aluno');
readln(aluno[i].nota[j]);
end;
writeln('Aluno: ',aluno[i].nome);
for j:=1 to 4 do
begin
writeln(j,'a. nota: ',aluno[i].nota[j]:5:2);
end;
end;
writeln('Tecle <ENTER> para encerrar');
readln;
end.
