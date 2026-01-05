{Construir o cadastro bancario para acesso e execucao dos comandos ja definidos
e implementados com register, usando agora FILE
Le dados num terminal e armazena um a um registro a registro, ate que nao queira continuar
visualiza conteudo do arquivo
Aplicar regras paraisencao da taxa bancaria, conforme exemplo anterior}

program conjunto;
type
cod_cliente=record
nome:string;
idade:integer;
sexo:char;
estcivil:char;
qualidade:char;
financeiro:record
saldomedio:real;
saldodevedor:real;
investfundo:char;
tempocliente:integer;
end;
end;
var
cliente: file of cod_cliente;
m:cod_cliente;
i,j,n:integer;
begin
assign(cliente,'celso.dat');
rewrite(cliente);
writeln ('CADASTRO DE CLIENTES');
writeln;
writeln('QUANTOS CADASTRO VC QUER REALIZAR?');
readln(n);
writeln;
for j:=1 to n do
begin
write('Informe o nome do cliente...:');readln(m.nome);
write('Informe a idade do cliente...:');readln(m.idade);
write('Informe o sexo do cliente (M-Masculino; F-Feminino)...:');readln(m.sexo);
write('Informe o estado civil do cliente (S-Solteiro;C-Casado;V-Viuvo;D-Divorciado...:');readln(m.estcivil);
write('Informe a qualidade do cliente (b-bom;m-mau)...:');readln(m.qualidade); 
write('Informe o saldo medio...:');readln(m.financeiro.saldomedio); 
write('Informe o saldo devedor...:');readln(m.financeiro.saldodevedor); 
write('Informe se possui investfundo...:');readln(m.financeiro.investfundo); 
write('Informe o tempo do cliente...:');readln(m.financeiro.tempocliente);
write(cliente,m);
writeln;
end;
close(cliente);
reset(cliente);
while not eof (cliente) do
begin
read(cliente,m);writeln('NOME: ',m.nome);
writeln('IDADE: ',m.idade);
writeln('SEXO: ',m.sexo);
writeln('ESTADO CIVIL: ',m.estcivil);
writeln('QUALIDADE: ',m.qualidade);
writeln('SALDO MEDIO: ',m.financeiro.saldomedio:9:2);
writeln('SALDO DEVEDOR: ',m.financeiro.saldodevedor:9:2);
writeln('POSSUI INVESTFUNDO?: ',m.financeiro.investfundo);
writeln('TEMPO DO CLIENTE: ',m.financeiro.tempocliente);
writeln;
end;
end.