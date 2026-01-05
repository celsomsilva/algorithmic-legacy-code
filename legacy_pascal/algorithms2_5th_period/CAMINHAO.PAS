program caminhao;
uses crt;
var i,lado1,lado2:integer;
begin
write('Entre com a dimensao da embalagem: ');
readln(lado1);
write('Entre com a dimensao do caminhao: ');
readln(lado2);
i:=lado2 div lado1;
i:=i*i*i;
writeln('Cabem ',i,' embalagens.');
end.

