program arquivotexto;
{1  crie um arquivo file com nomes de produtos. o codigo do produto
sera o proprio numero fisico do registro.
cadastre os seguintes produtos :
- arroz
- batata
- feijao
- detergente
- fogao

em seguida, visualize os produtos e respectivos codigos no monitor

2 crie arquivo file com nome de fornecedores, o codigo do fornecedor
sera o proprio numero fisico do registro

0 - sendas
1 - tele-rio
2 - bobs

3 crie o arquivo file com a relacao fornecedor-produto :

fornecedor      produto
    0              0
    1              4
    0              2
    2              1
    0              3}

uses crt;


var

ArquivoProdutos:file of string;
ArquivoFornecedores:file of string;
ArquivoRelacao:file of string;

AuxProd:string;
AuxForn:string;
AuxRela:string;
Opca:char;
AuxCont:char;



procedure PInicProd;
begin
AuxCont:='S';
rewrite(ArquivoProdutos);
repeat
	write('Entre com o Produto : ');
	readln(AuxProd);
	{ gravar o produto no arquivo }
	{ Inciar o arquivo para gravacao }
	write(ArquivoProdutos,AuxProd);
	writeln('Deseja gravar novo produto ? (S --> Sim, qualquer outra tecla para nao )');
        readln(AuxCont);
        AuxCont:=upcase(AuxCont);
until AuxCont<>'S';
close(ArquivoProdutos);
end;

procedure PInicForn;
begin
AuxCont:='S';
rewrite(ArquivoFornecedores);
repeat
        write('Entre com o Fornecedor : ');
        readln(AuxForn);
	{ gravar o produto no arquivo }
	{ Inciar o arquivo para gravacao }
        write(ArquivoFornecedores,AuxForn);
        writeln('Deseja gravar novo Fornecedor ? (S --> Sim, qualquer outra tecla para nao )');
        readln(AuxCont);
        AuxCont:=upcase(AuxCont);
until AuxCont<>'S';
close(ArquivoFornecedores);
end;



procedure PImprProd;
begin
    reset(ArquivoProdutos);
    while not eof(ArquivoProdutos) do
    begin
	read(ArquivoProdutos,AuxProd);
        writeln('Codigo : ',filepos(ArquivoProdutos),' Produto : ',AuxProd);
    end;
end;

procedure PImprForn;
begin
    reset(ArquivoFornecedores);
    while not eof(ArquivoFornecedores) do
    begin
        read(ArquivoFornecedores,AuxForn);
        writeln('Codigo : ',filepos(ArquivoFornecedores),' Fornecedor : ',AuxForn);
    end;
end;

procedure PCriaArqu;
begin
    rewrite(ArquivoRelacao);
    reset(ArquivoProdutos);
    reset(ArquivoFornecedores);

        seek(ArquivoFornecedores,0);
        read(ArquivoFornecedores,AuxForn);
        seek(ArquivoProdutos,0);
        read(ArquivoProdutos,AuxProd);
        write(Arquivorelacao,AuxForn,AuxProd);

        seek(ArquivoFornecedores,1);
        read(ArquivoFornecedores,AuxForn);
        seek(ArquivoProdutos,4);
        read(ArquivoProdutos,AuxProd);
        write(ArquivoRelacao,AuxForn,AuxProd);

        seek(ArquivoFornecedores,0);
        read(ArquivoFornecedores,AuxForn);
        seek(ArquivoProdutos,2);
        read(ArquivoProdutos,AuxProd);
        write(ArquivoRelacao,AuxForn,AuxProd);

        seek(ArquivoFornecedores,2);
        read(ArquivoFornecedores,AuxForn);
        seek(ArquivoProdutos,1);
        read(ArquivoProdutos,AuxProd);
        write(ArquivoRelacao,AuxForn,AuxProd);

        seek(ArquivoFornecedores,0);
        read(ArquivoFornecedores,AuxForn);
        seek(ArquivoProdutos,3);
        read(ArquivoProdutos,AuxProd);
        write(ArquivoRelacao,AuxForn,AuxProd);

end;

procedure PImprRela;
    { mostrar arquivo relacao }
    begin
        reset(ArquivoRelacao);
        while not eof(ArquivoRelacao) do
        begin
                read(ArquivoRelacao,AuxForn,AuxProd);
                writeln('Arquivo Relacao : ',AuxForn,' -- ',AuxProd);
        end;
    end;





{ Inicio do programa }

begin
        assign(ArquivoProdutos,'ArquivoProdutos.dat');
        assign(ArquivoFornecedores,'ArquivoFornecedores.dat');
        assign(ArquivoRelacao,'ArquivoRelacao.dat');
        clrscr;
	while Opca<>'x' do
	begin
    	    writeln('Escolha a Opcao : ');
            writeln(' 1 --> Inserir produtos');
            writeln(' 2 --> Inserir Fornecedores');
            writeln(' 3 --> Gerar Relacao entre Produtos e Fornecedores');
	    writeln(' 4 --> Imprimir Produtos');
            writeln(' 5 --> Imprimir Fornecedores');
            writeln(' 6 --> Imprimir Relacao');
            writeln(' x --> Sair');
            readln(Opca);
            Opca:=upcase(Opca);

    	    begin
                case Opca of
                        '1': PInicProd;
                        '2': PInicForn;
                        '3': PCriaArqu;
                        '4': PImprProd;
                        '5': PImprForn;
                        '6': PImprRela;

                end;
            end;
	end;
end.
