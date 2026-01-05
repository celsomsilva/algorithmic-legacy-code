program Lista;
uses crt;
var arq1,arq2,arq3,arq4:text;entrada11,entrada12,entrada21,entrada22,saida11,saida12,saida21,saida22,dia1,dia2,a,b,c,d,k,m,z,w,v,j,i,x,y,cred1,cred2:integer;
disc1;disc2:string;
begin
clrscr;
assign(arq1,'horario.dat');
assign(arq2,'disciplinas.dat');
assign(arq3,'matricula.dat');
assign(arq4,'alunos.dat');
writeln('___________________________________________________________');
writeln('|  |    2a    |    3a    |    4a    |    5a    |    6a    |');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|M1||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|M2||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|M3||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|M4||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|M5||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|M6||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|T1||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|T2||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|T3||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|T4||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|T5||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|T6||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|N1||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|N2||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|N3||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|N4||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|N5||||||');
writeln('|__|__________|__________|__________|__________|__________|');
writeln('|N6||||||');
writeln('|__|__________|__________|__________|__________|__________| TOTAL DE CREDITOS: ',z+y);
reset(arq3);
for i:=1 to 17 do
 begin
 readln(arq3);
 if arq3=m then
  begin
  readln(x);
  writeln;
  readln(y);
  end;
 end;
close(arq3);
reset(arq2);
for j:=1 to 13 do
 begin
 readln(arq2);
 if (x or y)=arq2  then
  begin
  v:=1;
  case v of
  1:begin
    readln(disc1);
    readln(z);
    end;
  2:begin
    readln(disc2);
    readln(w);
    end;
  v:=v+1;
  end;
 end;
close(arq2);
reset(arq1);
v:=1;
for k:=1 to 15 do
 begin
 readln(arq1);
 if (x or y)=arq1 then
  begin
   case v of
  1:begin
    readln(dia1);
    read(entrada11);
    readln(entrada12);
    read(saida11);
    readln(saida12);
    end;
  2:begin
    readln(dia2);
    read(entrada21);
    readln(entrada22);
    read(saida21);
    readln(saida22);
    end;
  v:=v+1;
  end;
 end;
close(arq1);
a:=0;
while a<>5 do
 begin
 b:=0;
 d:=0;
 while b<> 3 do
  begin
  c:=0;
  while c<>7 do
   begin
   gotoxy(a*11+5,d*2+4);
   if ((a+2=dia1)and(((b=entrada11)and(c=saida11))or((b=entrada12)and(c=saida12)))) then write(disc1)
   else write('          ');
   if ((a+2=dia2)and(((b=entrada21)and(c=saida21))or((b=entrada22)and(c=saida22)))) then write(disc2)
   else write('          ');
   d:=d+1;
   c:=c+1;
   end;
  b:=b+1;
  end;
 a:=a+1
 end;
end.