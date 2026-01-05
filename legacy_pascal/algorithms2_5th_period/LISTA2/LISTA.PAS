program Listas;
uses crt;
type aluno=record
     matricula:integer;
     nome:string;
     prox:^aluno;
     end;
     disciplinas=record
     codigo:integer;
     nome:string;
     creditos:integer;
     end;
label 1,2;
var arq1,arq2,arq3,arq4:text;creditos,entrada11,entrada12,entrada21,entrada22,saida11,saida12,saida21,saida22,dia1,dia2,a,b,c,d,m,z,w,v,x,y,e,f,g,j,k,h:integer;
disc1,disc2,disca:string;opcao:char;p,prim:^aluno;aluno1:aluno;disciplina:disciplinas;alunos:array[1..3] of integer;
procedure lista_disciplina;
var m:string;cod,disc,i:integer;
begin
read(m);
clrscr;
reset(arq2);
while not eof(arq2) do
 begin
 readln(arq2,disciplina.codigo);
 readln(arq2,disciplina.nome);
 readln(arq2,disciplina.creditos);
 if m=disciplina.nome then break;
 end;
close(arq2);
reset(arq3);
i:=1;
while not eof(arq3) do
 begin
 readln(arq3,cod);
 readln(arq3,disc);
 if disc=disciplina.codigo then
  begin
  alunos[i]:=cod;
  i:=i+1;
  end;
 end;
close(arq3);
reset(arq4);
i:=1;
new(prim);
prim^.prox:=nil;
while not eof(arq4) do
 begin
 readln(arq4,aluno1.matricula);
 readln(arq4,aluno1.nome);
 if aluno1.matricula=alunos[i] then
  begin
  new(p);
  p^.prox:=prim;
  prim^.matricula:=aluno1.matricula;
  prim^.nome:=aluno1.nome;
  prim:=p;
  end;
 i:=i+1;
 end;
close(arq4);
while prim^.prox<>nil do
 begin
 write(prim^.nome,'   ');
 writeln(prim^.matricula);
 prim:=prim^.prox;
 end;
write(prim^.nome,'   ');
writeln(prim^.matricula);
prim:=p;
end;
procedure pesquisa;
var mat:integer;
begin
readln(mat);
while prim^.prox<>nil do
 begin
 if mat=prim^.matricula then writeln('O aluno consta na lista encadeada');
 prim:=prim^.prox;
 end;
if mat=prim^.matricula then writeln('O aluno consta na lista encadeada');
end;
procedure remove;
begin
prim:=p^.prox;
p:=prim;
while prim^.prox<>nil do
 begin
 write(prim^.nome,'   ');
 writeln(prim^.matricula);
 prim:=prim^.prox;
 end;
write(prim^.nome,'   ');
writeln(prim^.matricula);
prim:=p;
end;
procedure total_alunos;
var i:integer;
begin
i:=1;
while prim^.prox<>nil do
 begin
 i:=i+1;
 end;
writeln('EXISTEM ',i,' ALUNOS MATRICULADOS NA LISTA');
end;
procedure menu;
begin
writeln('ESCOLHA AS OPCOES ABAIXO');
writeln;
writeln;
writeln('G matricula<ENTER>: Grade horaria do aluno especificado');
writeln('D nome_da_disciplina<ENTER>: Indica os alunos matriculados na disciplina especificada');
writeln('P matricula<ENTER>: Pesquisa um aluno e indica sua existencia ou nao');
writeln('R<ENTER>: Remove o primeiro aluno da lista criada em "D"');
writeln('C<ENTER>: Contabiliza e imprime o numero total de alunos matriculados');
writeln('F<ENTER>: Fim da execução do programa');
end;
procedure grade;
begin
read(m);
clrscr;
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
writeln('|__|__________|__________|__________|__________|__________|');
reset(arq3);
while not eof(arq3) do
 begin
 readln(arq3,e);
 if e=m then
  begin
  readln(arq3,x);
  readln(arq3,h);
  readln(arq3,y);
  end;
 end;
close(arq3);
reset(arq2);
while not eof(arq2) do
 begin
 readln(arq2,f);
 readln(arq2,disca);
 readln(arq2,v);
 if (x or y)=f  then
  begin
  if disc1<>disca then
   begin
   disc1:=disca;
   z:=v;
   end
  else
   begin
   disc2:=disca;
   w:=v;
   end;
  end;
 end;
close(arq2);
creditos:=z+w;
writeln('TOTAL DE CREDITOS: ',creditos);
reset(arq1);
v:=0;
while not eof(arq1) do
 begin
 readln(arq1,g);
 if (x or y)=g then
  begin
  v:=v+1;
   case v of
  1:begin
    readln(arq1,dia1);
    read(arq1,entrada11);
    readln(arq1,entrada12);
    read(arq1,saida11);
    readln(arq1,saida12);
    end;
  2:begin
    readln(arq1,dia2);
    read(arq1,entrada21);
    readln(arq1,entrada22);
    read(arq1,saida21);
    readln(arq1,saida22);
    end;
   end;
  end;
 end;
close(arq1);
a:=0;
while a<>5 do
 begin
 b:=0;
 d:=0;
 while b<>3 do
  begin
  c:=0;
  while c<>7 do
   begin
   j:=(a*11)+5;
   k:=(d*2)+4;
   gotoxy(j,k);
   if ((a+2=dia1)and(((b=entrada11)and(c=saida11))or((b=entrada12)and(c=saida12)))) then write(disc1)
   else
    begin
    if ((a+2=dia2)and(((b=entrada21)and(c=saida21))or((b=entrada22)and(c=saida22)))) then write(disc2)
    else write('          ');
    end;
   d:=d+1;
   c:=c+1;
   end;
  b:=b+1;
  end;
 a:=a+1;
 end;
end;
begin
assign(arq1,'hora.txt');
assign(arq2,'disc.txt');
assign(arq3,'matr.txt');
2:menu;
opcao:=readkey;
case opcao of
'g':grade;
'd':lista_disciplina;
'p':pesquisa;
'r':remove;
'c':total_alunos;
'f':goto 1;
end;
writeln('DESEJA VOLTAR AO MENU?');
readln(opcao);
if opcao='s' then goto 2;
1:end.