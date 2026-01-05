program criar;
uses crt;
var arquivopar:file of real;
begin
assign(arquivopar,'c:\windows\desktop\arqpar.txt');
rewrite(arquivopar);
close(arquivopar);
end.