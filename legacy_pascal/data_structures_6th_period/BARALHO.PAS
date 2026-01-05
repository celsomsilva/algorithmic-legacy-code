{1)declare e crie um "baralho" com 52 cartas, usando uma lista linear duplamente
encadeada. Cada carta tem os seguintes atributos:
- Naipe: ouros, copas, paus e espadas
- Valor: inteiro de 1 a 13
- Face: 0 p/baixo e 1 p/ cima
2) Separe o "baralho"acima criado em 2 "decks". Um contendo só cartas vermelhas e
outro contendo só pretos
}
program baralho;
uses crt;
type naipes=(espadas,paus,copas,ouros);
     elemento=record
     esq:^elemento;
     dir:^elemento;
     naipe:naipes;
     valor:integer;
     face:integer;
     end;
var p,pt,t:^elemento;i:naipes;j:integer;
procedure inserir;
begin
new(p);
p^.dir:=nil;
p^.naipe:=espadas;
p^.valor:=1;
p^.face:=1;
for j:=1 to 13 do
 begin
  for i:=espadas to ouros do
   begin
   if i=espadas then
    if  j=1 then continue;
   new(pt);
   pt^.dir:=p;
   p^.esq:=pt;
   pt^.valor:=j;
   pt^.face:=random(2);
   pt^.naipe:=i;
   p:=pt;
   end;
 end;
end;
procedure escrever;
begin
for j:=1 to 52 do
 begin
 if pt^.valor<10 then write('0');
 write(pt^.valor,' de ');
 case pt^.naipe of
 espadas:write('espadas');
 paus:write('paus');
 copas:write('copas');
 ouros:write('ouros');
 end;
 write(', ',pt^.face,' / ');
 pt:=pt^.dir;
 if j mod 4=0 then writeln;
 end;
writeln;
writeln('clique <ENTER> para continuar');
readkey;
clrscr;
end;
{proc,edure decks;
begin
for j:=1 to 52 do
 begin
 new(t);
 
 end;
end;}
begin
inserir;
escrever;
{decks;}
end.
