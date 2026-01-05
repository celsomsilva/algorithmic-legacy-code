Program adicao;
uses crt;
var x,y,w,t:integer;
     procedure calc_adicao(a,b:integer);
     var z:integer;
     begin
          z:=a+b;
          writeln(z);
     end;
     begin
     readln(x);
     readln(y);
     calc_adicao(x,y);
     readln(w);
     readln(t);
     calc_adicao(w,t);
     calc_adicao(6,4);
     readkey;
end.