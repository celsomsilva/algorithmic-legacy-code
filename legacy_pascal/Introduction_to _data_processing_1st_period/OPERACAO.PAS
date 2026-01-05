program operacao;
uses crt;
var o:integer;
x,y,r:real;
begin
clrscr;
writeln('Entre com a operaá∆o: 1-Soma; 2-Subtraá∆o; 3-Multiplicaá∆o; 4-Divis∆o');
readln(o);
writeln('Entre com o primeiro valor');
readln(x);
writeln('Entre com o segundo valor');
readln(y);
case o of
1: r:=x+y;
2: r:=x-y;
3: r:=x*y;
4: r:=x/y;
end;
writeln('O resultado e: ',r:10:2);
delay(5000);
end.