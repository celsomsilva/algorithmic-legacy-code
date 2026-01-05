program Escrever3;
uses crt;
var arquivopar:file of real;f:real;
begin
assign (arquivopar,'c:\windows\desktop\arqpar.txt');
reset(arquivopar);
f:=0;
while f<1000000000 do
begin
write(arquivopar,f);
f:=f+2;
end;
close (arquivopar);
end.

