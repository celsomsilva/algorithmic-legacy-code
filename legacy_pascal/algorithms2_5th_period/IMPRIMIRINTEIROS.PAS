program imprimir;
uses crt;
var n,k,i:integer;

begin
 writeln ('entre com 0<= N <=100 e 2<= K <=9');
 readln (n);
 readln (k);
 for i:=0 to n do
  begin
   if ((i mod 10)<>k) then
    begin
    if ((i mod k)<>0)then
     begin
     if ((i mod 10)+(i div 10) <> k)then
     write (' ',i);
     end;
    end;
   end;
   writeln;
end.
