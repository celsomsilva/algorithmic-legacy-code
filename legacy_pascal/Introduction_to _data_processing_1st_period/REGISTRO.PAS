Program Registros2;
type
Bimestre=array [1..4] of real;
cod_aluno=record
nome:string;
nota:Bimestre;
end;
var
aluno: cod_aluno;
I:byte;
begin
writeln ('Cadastro de aluno');
writeln;
write('Informe o nome...:'); readln(aluno.nome);
writeln;
for I:=1 to 4 do
begin
write('Informe a',I:2,'a.nota...:');
readln(aluno.nota[I]);
end;
writeln;
writeln('nome...:', aluno.nome);
writeln;
for I:=1 to 4 do
writeln(I,'a.nota','...:',aluno.nota[I]:5:2);
writeln;
writeln('Tecle <ENTER> para encerrar:');
readln;
end.
