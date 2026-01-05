program questao1;
uses crt;
type cliente=record
     idade:integer;
     nome:string;
     saldo:real;
     end;
type elemento=^pont;
     pont=record
     idade:integer;
     nome:string;
     saldo:real;
     prox:elemento;
     end;
var p,prim:elemento;arq:file of cliente;cliente1:cliente;opcao,i:char;a:integer;
procedure menu;
begin
writeln('ESCOLHA UMA DAS OPCOES:');
writeln('d: Inserir e visualisar dados no arquivo');
writeln('l: Ler dados do arquivo e cria uma lista, percorre e imprime a lista');
writeln('p: Procurar na lista os 2 mais ricos clientes');
readln(opcao);
end;
procedure insere;
begin
rewrite(arq);
i:='s';
a:=1;
while i='s' do
 begin
 write('ESCREVA O ',a,'o. NOME: ');
 readln(cliente1.nome);
 {write(arq,cliente1.nome);}
 write('ESCREVA O SALDO: ');
 readln(cliente1.saldo);
{ write(arq,cliente1.saldo);}
 write('ESCREVA A IDADE: ');
 readln(cliente1.idade);
 write(arq,cliente1);
 write('CONTINUA A ENTRADA DE DADOS?(S-SIM;N-NAO): ');
 readln(i);
 a:=a+1;
 end;
close(arq);
end;
procedure escreve;
begin
reset(arq);
while not eof(arq) do
 begin
 read(arq,cliente1);
 write(cliente1.nome, ' ');
 write(cliente1.saldo:5:2,' ');
 writeln(cliente1.idade);
 end;
close(arq);
end;
procedure crialista;
begin
reset(arq);
new(p);
p^.prox:=nil;
while not eof(arq) do
 begin
 read(arq,cliente1);
 new(prim);
 p^.idade:=cliente1.idade;
 p^.saldo:=cliente1.saldo;
 p^.nome:=cliente1.nome;
 prim^.prox:=p;
 p:=prim;
 end;
end;
procedure percorrerlista;
begin
 repeat 
 begin
 write(p^.nome,' ');
 write(p^.saldo:3:2,' ');
 writeln(p^.idade,' ');
 p:=p^.prox;
 end;
 until p^.prox=nil;
write(p^.nome,' ');
write(p^.saldo:3:2,' '); 
write(p^.idade);
end;
{procedure procura;
var media1,media2:real;
begin
media1:=0;
media2:=0
repeat
 begin
 p:=p^.prox;
 if p^.idade>60 then
  begin 
  if media1 or media2<p^.saldo then;
   begin
   if media1>media2 then
    media2:=p^.saldo
    else media1:=p^.saldo;
   end;
  end;
 end;  
until p^.prox<>nil;
writeln(
end;}
begin
assign(arq,'banco.dat');
menu;
case opcao of
'd':begin
    insere;
    escreve;
    end;
'l':begin
    crialista;
    percorrerlista;
    end;
{'p':begin
    procura;
    end;}
end;
end.
