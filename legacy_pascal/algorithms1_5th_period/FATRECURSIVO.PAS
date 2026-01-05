program fatrecursivo;
uses crt;
var a,y:integer;
function fat(N:integer):integer;
begin
writeln;
writeln('Calcularei fat(',N,')');
writeln('chamada no. ',y);
writeln('O valor de N e: ',N);
if N>0 then
begin
y:=y+1;
writeln('Esta pendente fat(',(N-1),')*',N);
delay(1000);
fat:=fat(N-1)*N;
end;
fat:=1;
end;
begin
y:=1;
write('Escreva o numero a ser fatorado: ');
readln(a);
fat(a);
end.