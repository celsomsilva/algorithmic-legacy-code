{criar uma lista de numeros inteiros de 1 a 20}

program lista;
uses crt;
type
elemento=record
    dado:integer;
    prox:^elemento;
    end;
var p,prim:^elemento;a:integer;
begin
new(prim);
prim:=nil;
for a:=20 downto 1 do
    begin
    new(p);
    p^.dado:=a;
    p^.prox:=prim;
    prim:=p;
    write(p^.dado,', ');
    end;
end.
