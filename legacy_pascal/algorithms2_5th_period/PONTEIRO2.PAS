program ponteiro;
uses crt;
type pont=record
     dado:integer;
     prox:^pont;
     end;
var aux,prim,p,aux2:^pont;
begin
clrscr;
new(prim);
prim^.dado:=2;
prim^.prox:=nil;
new(p);
p^.dado:=6;
p^.prox:=prim;
prim:=p;
new(aux);
aux^.dado:=9;
aux^.prox:=prim;
prim:=aux;
while (prim^.prox<>nil) do
 begin
 write(prim^.dado,' ');
 prim:=prim^.prox;
 end;
writeln;
prim:=aux;
while (prim^.dado<>2) do {procura}
 begin
 write(prim^.dado,' ');
 prim:=prim^.prox;
 end;
writeln;
new(aux2);         {insercao apos procura}
prim^.prox:=aux2;
aux2^.prox:=nil;
aux2^.dado:=10;
aux:=p;   {Eliminacao}
{verificacao}
writeln;
while (aux<>nil) do
 begin
 write(aux^.dado,' ');
 aux:=aux^.prox;
 end;
end.
