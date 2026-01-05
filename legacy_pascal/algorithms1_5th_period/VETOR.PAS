program vetores;
uses crt;
type 
vetor=array [1..10] of integer;
var v1:vetor;i:integer;
begin
for i:=1 to 10 do
begin
v1[i]:=2**i;{2 elevado a i}
end;
for i:=10 downto 1 do
begin
write(v1[i],', ');
end;
end.
