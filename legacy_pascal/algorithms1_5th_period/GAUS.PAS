Program Gaus;
uses crt;
var
i:real;
cont,s,x:integer;
begin
clrscr;
writeln('Entre com o valor');
readln(x);
i:=x/2;
s:=0;
cont:=1;
while(cont<=i) do
begin
s:=(x+1)+s;
cont:=cont+1;
end;
writeln(s);
delay(6000);
end.
