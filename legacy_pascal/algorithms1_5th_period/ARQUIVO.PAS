{Crie um arquivo com a sequencia dos primeiros 50 numeros impares e, em
seguida, visualize o conteudo no monitor
b)Visualise o tamanho do arquivo e visualise o seu conteudo indicando a 
posicao fisica de cada informacao
c)usando seek, filesize e filepos, abra o arquivo e leia-o de tras p/frente
d)elimine o arquivo}
program arquivo;
uses crt;
var
a,c:integer;
b:file of integer;
begin
assign(b,'celso.dat');
rewrite(b);
for a:=1 to 99 do
begin
    if (a mod 2<>0) then
    write(b,a);
end;
close(b);
reset(b);
writeln('Posicao fisica    Informacao');
writeln;
c:=0;
while not eof(b) do
begin
    read(b,a);
    writeln(c,'             ',a);
    c:=c+1;
end;
end.