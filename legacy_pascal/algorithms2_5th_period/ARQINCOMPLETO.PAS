program arquivo2;
uses crt;
type reg=record
        nome:string;
        nota:integer;
        end;
var arq:file of reg;i:integer;a,b,c:reg;
begin
assign(arq,'celso.dat');
rewrite(arq);
write('Escreva o 1o. aluno <ENTER> e sua nota <ENTER>: ');
readln(a.nome);
readln(a.nota);
write('Escreva o 2o. aluno <ENTER> e sua nota <ENTER>: ')
readln(b.nome);
readln(b.nota);
write('Escreva o 3o. aluno <ENTER> e sua nota <ENTER>: ')
readln(c.nome);
readln(c.nota);

write(arq,reg.nome);
write(arq,reg.nota);

end;
