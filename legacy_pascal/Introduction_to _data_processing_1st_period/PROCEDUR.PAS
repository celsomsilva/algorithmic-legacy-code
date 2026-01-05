Program Encontro;
uses crt;
 var nome:string;
     procedure elogio;
     begin
     writeln ('Nome bonito!');
     writeln ('Um dos meus favoritos');
     end;
 begin
 writeln ('Qual o seu nome?');
 readln(nome);
 elogio;
 writeln ('Prazer em conhece-la ',nome,'!!!');
 readkey;
 end.