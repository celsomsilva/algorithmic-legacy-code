Program Media_global;
uses crt;
 var nota1,nota2,nota3,peso1,peso2,peso3,media:real;
     procedure lerdadosnota(var nota,peso:real);
     begin
          writeln('Digite a nota');
          readln(nota);
          writeln('Digite o peso');
          readln(peso);
     end;
     begin
          writeln('Primeira nota');
          lerdadosnota(nota1,peso1);
          writeln('Segunda nota');
          lerdadosnota(nota2,peso2);
          writeln('Terceira nota');
          lerdadosnota(nota3,peso3);
          media:=((nota1*peso1)+(nota2*peso2)+(nota3*peso3))/(peso1+peso2+peso3);
          writeln('media global = ',media:5:2);
          readkey;
     end.
