program pointer;
uses crt;
var p:^integer;
begin
clrscr;
new(p);
p^:=20;
write(p^);
end.