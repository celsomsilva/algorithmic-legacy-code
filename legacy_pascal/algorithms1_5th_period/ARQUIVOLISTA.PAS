{crie um arquivo file com os primeiros 20 numeros inteiros. A partir do arquivo criado
construa uma lista encadeada. Percorra a lista, imprimindo seu conteudo.
insira o dado (n+100) apos o dado=n n pertence [1-20] fornecido pelo usuario
percorra a lista alterada e grave o seu conteudo no arquivo original. imprima o conte
udo do arquivo}

program Arquivolista;
uses crt;
var arquivo:file of integer;
i:integer;
begin
assign(arquivo,'mineiro.dat');
rewrite(mineiro.dat);
for i:=1 to 20 do
    begin
    write(arquivo,i);
    end;
close(arquivo);
reset(arquivo);

while not eof
