program arquivo;
uses crt;
var arq:file of integer;i:integer;
begin
clrscr;
assign(arq,'celso.dat');
rewrite(arq);
for i:=1 to 50 do
write(arq,i);
close(arq);
reset(arq);
while not eof(arq) do
 begin
 read(arq,i);
 write(i,', ');
 end;
end.