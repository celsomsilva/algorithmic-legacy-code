{O GERENTE DO BANCO APLICA A SEGUINTE REGRA PARA IDENTIFICAR OS CLIENTES QUE TERÃO ISENÇÃO DE
TAXAS BANCÁRIAS:
SE[(SEXO=M E IDADE>=60)OU(SEXO=F E IDADE>=50)] E QUALI=BOM E (APRICAFUNDO=SIM OU TEMPO>=10) E
(SALDODEVEDOR=0)}


Program Cadastro;
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
cliente: array [1..100] of cod_cliente;
i,j:integer;
begin
writeln ('CADASTRO DE CLIENTES');
writeln;
for j:=1 to 3 do
begin
write('Informe o nome do cliente...:'); readln(cliente[j].nome);
write('Informe a idade do cliente...:'); readln(cliente[j].idade);
write('Informe o sexo do cliente (M-Masculino; F-Feminino)...:'); readln(cliente[j].sexo);
write('Informe o estado civil do cliente (S-Solteiro;C-Casado;V-Viuvo;D-Divorciado...:'); readln(cliente[j].estcivil);
write('Informe a qualidade do cliente (b-bom;m-mau)...:'); readln(cliente[j].qualidade);
write('Informe o saldo medio...:'); readln(cliente[j].financeiro.saldomedio);
write('Informe o saldo devedor...:'); readln(cliente[j].financeiro.saldodevedor);
write('Informe se possui investfundo...:'); readln(cliente[j].financeiro.investfundo);
write('Informe o tempo do cliente...:'); readln(cliente[j].financeiro.tempocliente);
writeln;
end;
for i:=1 to 3 do
begin
if (((cliente[i].sexo='M') and (cliente[i].idade>=60)) or ((cliente[i].sexo='F') and (cliente[i].idade>=50))) and (cliente[i].qualidade='B') and ((cliente[i].financeiro.investfundo='S') or (cliente[i].financeiro.tempocliente>=10)) and (cliente[i].financeiro.saldodevedor=0) then
begin
writeln('NOME: ',cliente[i].nome);
writeln('IDADE: ',cliente[i].idade);
writeln('SEXO: ',cliente[i].sexo);
writeln('ESTADO CIVIL: ',cliente[i].estcivil);
writeln('QUALIDADE: ',cliente[i].qualidade);
writeln('SALDO MEDIO: ',cliente[i].financeiro.saldomedio:9:2);
writeln('SALDO DEVEDOR: ',cliente[i].financeiro.saldodevedor:9:2);
writeln('POSSUI INVESTFUNDO?: ',cliente[i].financeiro.investfundo);
writeln('TEMPO DO CLIENTE: ',cliente[i].financeiro.tempocliente);
writeln;
end;
end;
end.
