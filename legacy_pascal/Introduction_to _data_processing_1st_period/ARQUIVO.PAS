program Exemplo;
uses crt;
type arquivo=file of integer;
var arq:arquivo;i:integer;
begin
assign (arq,'a:vasco.txt');
reset(arq);
for i:=1 to 100 do
write(arq,i);
seek(arq,80);
read(arq,i);
read(arq,i);
close(arq);
readkey;
end.