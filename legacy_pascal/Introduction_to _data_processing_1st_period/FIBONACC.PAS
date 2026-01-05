Program Fibonacci;
uses crt;
var
i,a,b,t:integer;
begin
b:=0;
t:=0;
a:=1;
i:=0;
while (i<14) do
begin
t:=a;
a:=a+b;
b:=t;
i:=i+1;
end;
writeln('O 15o. termo ‚: ',a);
delay(6000);
end.