Program chato;
var i:integer;
begin
i:=1;
while(i<=100) do
begin
 if i<>1 then
  write(', ');
 write(i);
 i:=i+2;
end;
writeln;
end.