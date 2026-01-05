program cidades;
uses crt;
type pont=record
     distancia:real;
     cidade:string;
     prox:^pont;
     end;
var prim,p:^pont;i,n,z:integer;a:real;
begin
clrscr;
write('QUANTAS CIDADES TEM NA ROTA?: ');
readln(n);
for i:=1 to n do
 begin
  if i=1 then
  begin
  new(prim);
  prim^.prox:=nil;
  write('QUAL O NOME DA CIDADE No.',i,' ?: ');
  readln(prim^.cidade);
  prim^.distancia:=0;
  end
  else
  begin
  new(p);
  p^.prox:=prim;
  prim:=p;
  write('QUAL O NOME DA CIDADE No.',i,' ?: ');
  readln(p^.cidade);
  write('QUAL A DISTANCIA?: ');
  readln(p^.distancia);
  a:=a+p^.distancia;
  end;
 end;
z:=20;
repeat
 gotoxy(1,z);
 write(prim^.cidade);
 gotoxy(15,z);
 write(a:15:2);
 a:=a-prim^.distancia;
 prim:=prim^.prox;
 z:=z+1;
until (prim=nil)
end.
