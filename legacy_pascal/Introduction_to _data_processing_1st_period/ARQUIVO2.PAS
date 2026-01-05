program Exemplo;
uses crt;
var arq:text;
begin
assign (arq,'c:windows\desktop\apostilas.doc');
rewrite(arq);
append(arq);
write(arq,'EU JAMAIS CONVERSARIA COM ALGUêM COM ‡CULOS ESCUROS!');
close(arq);
readkey;
end.