program trabalho3;
uses crt;
type ponteiro=^elemento;
     elemento=record
     palavra:string;
     ocor:integer;
     esq,dir:^elemento;
     end;
var praiz:ponteiro;n1,s,maisoumenos,arquivo,arquivo2:string;arq,arq2:text;n:integer;
procedure criararvore(var pt:ponteiro;s:string);
begin
if pt<>nil then
 begin
 if s=pt^.palavra then pt^.ocor:=pt^.ocor+1
 else
  begin
  if s<pt^.palavra then criararvore(pt^.esq,s)
  else criararvore(pt^.dir,s);
  end;
 end
else
 begin
 new(pt);
 pt^.ocor:=1;
 pt^.palavra:=s;
 pt^.esq:=nil;
 pt^.dir:=nil;
 end;
end;
procedure central(var pt:ponteiro);
begin
if pt<>nil then
 begin
 central(pt^.esq);
 if maisoumenos='+' then
  begin
  if pt^.ocor >=n then
   begin
   write(pt^.palavra,' ');
   write(arq2,pt^.palavra);
   write(arq2,' ');
   end;
  end;
 if maisoumenos='-' then
  begin
  if pt^.ocor <=n then
   begin
   write(pt^.palavra,' ');
   write(arq2,pt^.palavra);
   write(arq2,' ');
   end;
  end;
 central(pt^.dir);
 end;
end;
begin
arquivo:=paramstr(1);
arquivo2:=paramstr(2);
n1:=paramstr(3);
maisoumenos:=paramstr(4);
val(n1,n);
assign(arq,arquivo);
assign(arq2,arquivo2);
reset(arq);
praiz:=nil;
while not eof (arq) do
 begin
 readln(arq,s);
 criararvore(praiz,s);
 end;
rewrite(arq2);
central(praiz);
writeln;
close(arq2);
close(arq);
end.
