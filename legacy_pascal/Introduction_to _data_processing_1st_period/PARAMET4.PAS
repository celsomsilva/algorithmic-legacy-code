Program Fatorialppr;
uses crt;
procedure fatorial(n:integer;var fat:real);
var i:integer;
    begin
    fat:=1;
    for i:=1 to n do
    fat:=fat*i;
    end;
var limite:integer;retorno:real;
    begin
    writeln('Programa Fatorial');
    writeln('Informe um valor inteiro: ');
    readln(limite);
    fatorial(limite,retorno);
    writeln('O fatorial de ',limite,' ‚: ', retorno:30:0);
    readkey;
end.