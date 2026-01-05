program nebuloso;
type element=^elemento;
     elemento=record
     pert:real;{grau de pertinencia}
     dado:integer;
     prox:element;
     end;
var p,pt,prim,pont,aux1,aux2,aux3,aux4,aux5,aux6,p1,p2:element;j:integer;k,m:real;b:boolean;
procedure lerlista(var ab,cd:element);
begin
while ab<>nil do
 begin
 write(ab^.dado,'/',ab^.pert:3:3,', ');
 ab:=ab^.prox;
 end;
writeln;
writeln;
ab:=cd;
end;
procedure incluielemento(var t,tt:element;x:integer;y:real);
begin
new(tt);
tt^.prox:=t;
t:=tt;
tt^.dado:=x;
tt^.pert:=y;
end;
procedure crialista(var pnt,pim:element);
var n,i,a:integer;b:real;
begin
pnt:=nil;
writeln('Quantos elementos tera a lista?');
readln(n);
for i:=1 to n do
 begin
 write('Escreva o ',i,'o. elemento<ENTER>: ');
 read(a);
 write(' e a ',i,'a. pertinencia<ENTER>: ');
 readln(b);
 incluielemento(pnt,pim,a,b);
 end;
end;
begin
b:=true;
writeln('Criando a 1a. lista');
crialista(p,pt);
writeln;
writeln('Criando a 2a. lista');
crialista(pont,prim);
writeln;
aux1:=nil;
aux3:=nil;
while p<>nil do
 begin
 while pont<>nil do
  begin
  if p^.dado=pont^.dado then
   begin
   b:=false;
   j:=p^.dado;
   if p^.pert>pont^.pert then
    begin
    k:=pont^.pert;
    m:=p^.pert;
    end
   else
    begin
    k:=p^.pert;
    m:=pont^.pert;
    end;
   incluielemento(aux1,aux2,j,k);
   incluielemento(aux3,aux4,j,m);
   end;
  pont:=pont^.prox;
  end;
 if b=true then
  begin
  j:=p^.dado;
  k:=p^.pert;
  incluielemento(aux3,aux4,j,k);
  end
 else b:=true;
 pont:=prim;
 p:=p^.prox;
 end;
p:=pt;
while pont<>nil do
 begin
 while aux1<>nil do
  begin
  if pont^.dado=aux1^.dado then b:=false;
  aux1:=aux1^.prox;
  end;
 aux1:=aux2;
 if b=true then
  begin
  j:=pont^.dado;
  k:=pont^.pert;
  incluielemento(aux3,aux4,j,k);
  end
 else b:=true;
 pont:=pont^.prox;
 end;
pont:=prim;
writeln('1a. lista: ');
lerlista(p,pt);
writeln('2a. lista: ');
lerlista(pont,prim);
writeln('Intersecao: ');
lerlista(aux1,aux2);
writeln('Uniao: ');
lerlista(aux3,aux4);
aux5:=nil;
p1:=nil;
while p<>nil do
 begin
 j:=p^.dado;
 k:=1-p^.pert;
 incluielemento(aux5,aux6,j,k);
 p:=p^.prox;
 end;
writeln('1a. complemento: ');
lerlista(aux5,aux6);
p:=pt;
while pont<>nil do
 begin
 j:=pont^.dado;
 k:=1-pont^.pert;
 incluielemento(p1,p2,j,k);
 pont:=pont^.prox;
 end;
writeln('2o. complemento: ');
lerlista(p1,p2);
pont:=prim;
end.
