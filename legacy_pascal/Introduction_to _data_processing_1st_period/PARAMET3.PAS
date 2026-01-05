program fatorialppv;
uses crt;
     procedure fatorial(n:integer);
     var i:integer;
     fat:real;
     begin
     fat:=1;
     for i:=1 to n do
     fat:=fat*i;
     writeln('O fatorial de ',n,' ‚: ',fat:10:0);
     end;
     var limite:integer;
     begin
     writeln ('Programa Fatorial');
     writeln;
     write('Informe um valor inteiro: ');readln(limite);
     fatorial(limite);
     readkey;
     end.