program trabalho2;
uses crt;
type ponteiro=^elemento;
     elemento=record
     dado:char;
     esq,dir:^elemento;
     end;
label 1;
var p,ptraiz1:ponteiro;i,j:char;k:integer;
procedure criaarvore(var pt,ptraiz:ponteiro);
begin
new(pt);
if k=0 then ptraiz:=pt;
k:=k+1;
write('Escreva a string correspondente a arvore: ');
readln(i);
if i<>'.' then
 begin
 pt^.dado:=i;
 criaarvore(pt^.esq,ptraiz);
 criaarvore(pt^.dir,ptraiz);
 end
else pt:=nil;
end;
procedure pre(var pt,ptraiz:ponteiro);
begin
if pt<>nil then
 begin
 write(pt^.dado,', ');
 pre(pt^.esq,ptraiz);
 pre(pt^.dir,ptraiz);
 end;
end;
procedure central(var pt,ptraiz:ponteiro);
begin
if pt<>nil then
 begin
 central(pt^.esq,ptraiz);
 write(pt^.dado,', ');
 central(pt^.dir,ptraiz);
 end;
end;
procedure pos(var pt,ptraiz:ponteiro);
begin
if pt<>nil then
 begin
 pos(pt^.esq,ptraiz);
 pos(pt^.dir,ptraiz);
 write(pt^.dado,', ');
 end;
end;
procedure desalocar(var pt,ptraiz:ponteiro);
begin
if pt^.esq<>nil then desalocar(pt^.esq,ptraiz);
if pt^.dir<>nil then desalocar(pt^.dir,ptraiz);
dispose(pt);
end;
begin
1:k:=0;
criaarvore(p,ptraiz1);
p:=ptraiz1;
write('Pre-fixado: ');
pre(p,ptraiz1);
writeln;
p:=ptraiz1;
write('Central: ');
central(p,ptraiz1);
writeln;
p:=ptraiz1;
write('Pos-fixado: ');
pos(p,ptraiz1);
writeln;
p:=ptraiz1;
write('Voce quer fazer uma nova arvore?<s:sim;n:nao><ENTER>: ');
readln(j);
if j='s' then
 begin
 desalocar(p,ptraiz1);
 goto 1;
 end;
end.
