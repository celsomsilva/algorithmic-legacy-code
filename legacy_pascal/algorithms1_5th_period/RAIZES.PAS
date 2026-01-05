program raizes;
uses crt;
var a,b,c,d,e,f,g,h,j,i:real;
procedure quaddif(x,y:real);
begin
g:=y*y;
h:=x*x;
end;
function raiz(x,y:real):real;
begin
quaddif(x,y);
i:=g+h;
j:= sqrt(i);
raiz:=j;
end;
procedure calcula(x,y,z,w:real);
begin
e:=x-y;
f:=z-w;
raiz(e,f);
end;
begin
clrscr;
write('Digite o primeiro numero: ');
readln(a);
write('Digite o segundo: ');
readln(b);
write('Digite o terceiro: ');
readln(c);
write('Digite o quarto numero: ');
readln(d);
calcula(a,b,c,d);
write('O resultado e: ',j:10:3);
writeln;
end.
