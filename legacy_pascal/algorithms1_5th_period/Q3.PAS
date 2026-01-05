program Celso;
(*------------------------BIBLIOTECAS------------------------------*)
(*------------------------CONSTANTES-------------------------------*)
(*------------------------VARIAVEIS--------------------------------*)
var
    Total,x1,y1,x2,y2:real;
(*------------------------PROCEDIMENTOS E FUNCOES------------------*)
procedure Pler(var l:real;a:string[2]);
    begin
	write(a,':');
	readln(l);
    end;
    
(*------------------------EXECUCAO---------------------------------*)
begin
    x1:=0;
    y1:=0;
    Pler(x2,'x2');
    Pler(y2,'y2');
    while (x2<>0) and (y2<>0) do
	begin
	    Total:=total+sqrt((sqr(x1-x2))+(sqr(y1-y2)));
	    x1:=x2;
	    y1:=y2;
	    writeln('Poximo Ponto');
	    Pler(x2,'x2');
	    Pler(y2,'y2');
	end;
    Total:=total+sqrt((sqr(x1))+(sqr(y1)));
    writeln('Total:',total:4:2);
end.
