{celsomarcelo@hotmail.com}

program prova;
uses crt;
type
cliente=record
	 nome:string;
	saldo1,saldo2:real;
	idade:integer;
	end;
var
arquivo:text;
dados:cliente;
opcao:char;
arquivodat:text; 
label 1;
procedure visualizar;
begin
assign(arquivo,'banco.txt');
assign(arquivodat,'banco.dat');
reset(arquivo);
reset(arquivodat);
while not eof (arquivo) do
    begin
    read(arquivo,dados.nome);
    read(arquivo,dados.saldo1);
    read(arquivo,dados.saldo2);
    read(arquivo,dados.idade);
    write(dados.nome);
    write(dados.saldo1);
    write(dados.saldo2);
    writeln(dados.idade);
    write(arquivodat,dados.nome);
    write(arquivodat,dados.saldo1);
    write(arquivodat,dados.saldo2);
    write(arquivodat,dados.idade);
    end;
close(arquivo);    
end;    
procedure listaencadeada;
begin   

end;
begin
1:writeln('MENU PRINCIPAL');
writeln;
writeln('Escolha um dos comandos a seguir:');
writeln('D: Visualizar saldo e idade dos clientes');
writeln('L: Criar e visualizar uma lista encadeada');
writeln('P: Visualizar os dados dos 2 clientes mais ricos');
writeln('R: Inserir um o cliente paulo');
writeln('F: Finalizar o programa');
readln(opcao);
case opcao of
'd':visualizar;
'l':listaencadeada;
{'p':goto(2);
'r':goto(2);}
'f':;
end;
writeln;
writeln;
writeln;
{goto(1);
2:en1d.}
end.