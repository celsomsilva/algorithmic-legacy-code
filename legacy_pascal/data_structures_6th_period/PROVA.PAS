program prova;
uses crt;
type ponteiro=^elemento;
     elemento=record
     dado:integer;
     esq,dir:^elemento;
     end;
var s,i,j:integer;pt,ptraiz:ponteiro;
procedure criararvore(var pt:ponteiro;s:integer);
begin
if pt<>nil then
 begin
  if s<pt^.dado then criararvore(pt^.esq,s)
  else criararvore(pt^.dir,s);
  end
else
 begin
 new(pt);
 pt^.dado:=s;
 pt^.esq:=nil;
 pt^.dir:=nil;
 end;
end;
procedure central(var pt:ponteiro);
begin
if pt<>nil then
 begin
 central(pt^.esq);
 write(pt^.dado,', ');
 central(pt^.dir);
 end;
end;
procedure pre(var pt:ponteiro);
begin
if pt<>nil then
 begin
 if pt^.dir<>nil then
  begin
  if pt^.esq<>nil then
  write(pt^.dado,', ');
  end;
 pre(pt^.esq);
 pre(pt^.dir);
 end;
end;
procedure pos(var pt:ponteiro);
begin
 pos(pt^.esq);
 pos(pt^.dir);
 if pt^.dir<>nil then
  begin
  if pt^.esq<>nil then
  write(pt^.dado,', ');
  end;
end;
begin
pt:=nil;
ptraiz:=nil;
write('QUANTOS DADOS VC VAI INSERIR?: ');
readln(i);
for j:=1 to i do
 begin
 if j=2 then ptraiz:=pt;
 write('DIGITE DO DADO: ');
 readln(s);
 criararvore(pt,s);
 end;
pt:=ptraiz;
central(pt);
pt:=ptraiz;
writeln('CAMINHAMENTO PRE-ORDEM: ');
pre(pt);
writeln;
pt:=ptraiz;
writeln('CAMINHAMENTO POS-ORDEM: ');
pos(pt);
writeln;
end.
