program pa;
var r,soma,i:integer;
begin
r:=7;
i:=0;
soma:=0;
while (i<=100) do
begin
 write(' ',i);
 soma:=soma+i;
 i:=i+r;
 end;
 writeln;
 writeln('Soma: ',soma);
end.