program prova;
uses crt;
type elemento=record
     dado:real;
     ant:^elemento;
     pos:^elemento
     end;
     descritor=record
     i:^elemento;
     f:integer;
     fim:^elemento;
     end;
var p,pt:^elemento;desc:^descritor;j,k,m,n:integer;
begin
pt:=nil;
new(desc);
k:=0;
m:=1;
n:=1;
for j:=1 to 50 do
 begin
 new(p);
 if j> 2 then
  begin
  k:=n;
  n:=m;
  m:=k+n;
  end;
 p^.dado:=m;
 p^.pos:=pt;
 if pt<> nil then pt^.ant:=p;
 pt:=p;
 desc^.f:=desc^.f+1;
 desc^.i:=p;
 if j=1 then desc^.fim:=p;
 end;
for j:=1 to 50 do
 begin
 write(p^.dado:3:3,', ');
 p:=p^.pos;
 end;
p:=pt;
write('descritor: ',desc^.f)
end.