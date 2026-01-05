program arvore;
type ponteiro=^elemento;
     elemento=record
     esq:^elemento;
     dir:^elemento;
     dado:char;
     end;
var p:ponteiro;i:char;vetor:array [1..10] of char;j,k:integer;
procedure listarfolhas(var prim:ponteiro);
begin
if prim^.esq=nil then
 if prim^.dir=nil then
  begin
  j:=j+1;
  vetor[j]:=prim^.dado;
  end;
end;
procedure criaarvore(var pt:ponteiro);
begin
new(pt);
write('ESCREVA A STRING CORRESPONDENTE A ARVORE:');
readln(i);
if i<>'.' then
 begin
 pt^.dado:=i;
 criaarvore(pt^.esq);
 criaarvore(pt^.dir);
 write(pt^.dado,', ');{observe que isso he a leitura da arvore de maneira bem simples(toda vez que se completar uma subarvore - ou seja um procedimento - o noh completado he escrito)}
 listarfolhas(pt);
 end
 else
 pt:=nil;
end;
begin
j:=0;
k:=0;
criaarvore(p);{criando a arvore}
writeln;
write('AS FOLHAS DAS ARVORES SAO: ');
for k:=1 to j do
write(vetor[k],', ');
writeln;
end.
