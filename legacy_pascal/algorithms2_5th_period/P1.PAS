program questao1;
uses crt;
type registro=record
              nome:string;
              tempo:integer;
	      end;
label 2,1,3;
var w,i,f,r,result,x1,y1,x2,y2:integer;total,totaliza:real;vetor,vetoraux:array [1..4] of registro;
function soma(a,b,c:integer):integer;
var k,z:integer;
begin
if x='r' then goto 2;
writeln('PROGRAMA DE MODO INTERATIVO OU RECURSIVO?<n-INTERATIVO r-RECURSIVO>:');
readln(x);
2:if x='n' then
begin
 k:=1;
 z:=1;
 while (b>z) do
 begin
 z:=k*c;
 z:=z+a;
 soma:=a+(k*c);
 k:=k+1;
 end;
 end
else
 begin
 if a<=b then
 soma:=a+soma(a+c,b,c)
 else
 soma:=0;
 end;
end;
procedure distancia(a1,b1,a2,b2:integer;tot:real);
begin
tot:=sqrt(sqr(a2-a1)+sqr(b2-b1));
end;
procedure funcionarios();
var i,b:integer;
begin
for i:=1 to 4 do
 begin
 write('ESCREVA O NOME DO ',i,'o. FUNCIONARIO: ');
 readln(vetor[i].nome);
 end;
for i:=1 to 4 do
 begin
 b:=vetor[i].tempo div 12
 if b>=25 then
 writeln('O FUNCIONARIO ',vetor[i].nome,' PODE SE APOSENTAR');
 writeln;
 end;
end;
procedure ordenacao();
var i,j,k:integer;
begin
vetoraux[i]:=vetor[i];
 end;
for j:=1 to 3 do
begin
 for k:=1 to 3 do
 begin
  for i:=1 to 3 do
  begin
  if vetor[i]>vetor[i+1] then
   begin
   vetor[i]:=vetor[i+1];
   vetor[i+1]:=vetoraux[i];
   vetoraux[i]:=vetor[i];
   vetoraux[i+1]:=vetor[i+1];
   end;
  end;
 end;
end;
for i:=1 to 4 do
 writeln(vetor[i]);
end;}
begin
1:writeln('ESCOLHA A OPERACAO A SER REALIZADA:');
writeln('1-Soma de termos da PA');
writeln('2-Distancia percorrida');
writeln('3-Funcionarios');
writeln('4-Ordenacao');
writeln('5-Fim');
readln(w);
if w<6 
then writeln('EXECUTANDO COMANDO',w)
else
begin
writeln('COMANDO DESCONECIDO');
go to 1;
end;
case x of
1:begin
 writeln('ESCREVA O PRIMEIRO ELEMENTO<ENTER>, O ELEMENTO FINAL<ENTER>, E A RAZAO<ENTER>');
 readln(i);
 readln(f);
 readln(r);
 result:=soma(i,f,r);
 writeln('A SOMA DA PA E: ',result); 
 end;
2:begin
 3:writeln('ESCREVA AS COORDENADAS DAS CIDADES(x1,y1,x2,y2)');
 readln(x1);
 readln(y1);
 readln(x2);
 readln(y2);
 distancia(x1,y1,x2,y2,total); 
 totaliza:=total+total;
 if (x2 or y2)=0 then go to 3;
 end;
3:begin
  funcionarios();
  end;
4:begin
  ordenacao();
  end;  
5:writeln('FIM');
end.
