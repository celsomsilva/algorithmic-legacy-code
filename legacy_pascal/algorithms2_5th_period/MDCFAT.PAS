program mdcfat;
uses crt;
var x,y,i,z,w:integer;
function mdc(n,p:integer):integer;
begin
if p=0 then
mdc:=n
else
begin
mdc:=mdc(p,n mod p);
writeln(i,'a. chamada: ',mdc);
i:=i+1;
end;
end;
function fatorial(a:integer):integer;
begin
if a>0 then
begin
fatorial:=fatorial(a-1)*a;
writeln(i,'a. chamada: ',fatorial);
i:=i+1;
end
else
fatorial:=1;
end;
begin
write('ENTRE COM OS NUMEROS PARA MDC E FATORIAL: ');
readln(z);
readln(w);
i:=1;
x:=mdc(z,w);
writeln;
writeln;
i:=1;
y:=fatorial(x);
writeln;
writeln;
writeln('O FATORIAL E: ',y);
writeln('O MDC E: ',x);
end.