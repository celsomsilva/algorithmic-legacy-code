  {Criar um cadastro de clientes de um banco comercial para no máximo 100 clientes com as seguintes
  informações:NOME, IDADE, SEXO, EST.CIVIL, SALDO MÉDIO,BOM/MAU CLIENTE. a) Cadastrar alguns
  clientes e imprimir}
Program Cadastro;
type
cod_cliente=record
nome:string;
idade:integer;
sexo:byte;
estcivil:byte;
saldo:real;
bommau:byte;
end;
var
cliente: array [1..100] of cod_cliente;
i,j:integer;
begin
writeln ('CADASTRO DE CLIENTES');
writeln;
for j:=1 to 2 do
begin
write('Informe o nome do cliente...:'); readln(cliente[j].nome);
write('Informe a idade do cliente...:'); readln(cliente[j].idade);
write('Informe o sexo do cliente (1-Masculino; 2-Feminino)...:'); readln(cliente[j].sexo);
write('Informe o estado civil do cliente (1-Solteiro;2-Casado;3-Viuvo;4-Divorciado...:'); readln(cliente[j].estcivil);
write('Informe o saldo do cliente...:'); readln(cliente[j].saldo);
write('Informe se: 1-Mau cliente; 2-Bom cliente...:'); readln(cliente[j].bommau);
writeln;
end;
for i:=1 to 2 do
begin
writeln('NOME: ',cliente[i].nome);
writeln('IDADE: ',cliente[i].idade);
writeln('SEXO: ',cliente[i].sexo);
writeln('ESTADO CIVIL: ',cliente[i].estcivil);
writeln('SALDO: ',cliente[i].saldo:5:2);
writeln('BOM/MAU CLIENTE: ',cliente[i].bommau);
writeln('PROXIMO CLIENTE, APERTE <ENTER>:');
readln;
end;
end.


