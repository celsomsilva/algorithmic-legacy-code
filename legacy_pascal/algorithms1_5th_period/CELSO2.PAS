program Transporte;
uses crt;
var a,b,c,d:integer;
begin
write('Escreva o valor do numero de caixas: ');
readln(a);
write('Escreva o valor do lado do cubo (da mercadoria): ');
readln(b);
c:=(a*b*b*b);
d:=12-c;
if d>=0 then
writeln ('A carga vai ser toda transportada no segundo caminhao')
else
begin
d:=200-d;
writeln ('A carga vai encher o segundo caminhao e ',d,'m3 ira ser transportada no primeiro caminhao');
end;
end.


