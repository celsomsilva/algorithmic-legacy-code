program volume1;
uses crt;
var a,b,y,z,r,s,t,u:integer;
function vol(L1:integer):integer;
begin
vol:=L1*L1*L1;
end;
procedure dif(x1,x2:integer);
begin
if (x1-x2)>0 then
y:=x1-x2
else 
y:=x2-x1;
end;
function percent:integer;
begin
percent:=y div r;
end;
begin
writeln('Escolha a opcao: 1: Volume de um cubo');
writeln('                 2: A diferenca entre 2 volumes de cubo');
writeln('                 3: O percentual de 2 volumes de cubo');
write('Opcao: ');
readln(z);
write('Escreva o valor do lado do cubo: ');
readln(r);
a:=vol(r);
case z of
1:begin
    write('O volume do cubo e: ',a);
    end;
2:begin
    write('Escreva o valor do outro lado: ');
    readln(b);
    s:=vol(r);
    t:=vol(b);
    dif(s,t);
    write('A diferenca e: ',y);
    end;
3:begin
    write('Escreva o valor do outro lado: ');
    readln(b);
    s:=vol(r);
    t:=vol(b);
    dif(s,t);
    u:=percent;
    write ('O percentual e: ',u);
    end;
end;    
writeln;
end.