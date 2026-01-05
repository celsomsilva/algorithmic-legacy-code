program aumento;
var cat:char;sal,salnovo:real;
begin
writeln('Escreva o salario atual: ');
readln(sal);
writeln('Escreva o codigo da categoria: ');
readln(cat);
case cat of 
'a','c','f','h': 
begin
salnovo:=sal*0.1+sal;
writeln('O salario novo e: ',salnovo:6:2);
end;
'b','d','e','i','j','t':
begin
salnovo:=sal*0.15+sal;
writeln('O salario novo e: ',salnovo:6:2);
end; 
'k','s':
begin
salnovo:=sal*0.25+sal;
writeln('O salario novo e: ',salnovo:6:2);
end;
'l','m','n','o','p','q','r':
begin
salnovo:=sal*0.35+sal;
writeln('O salario novo e: ',salnovo:6:2);
end;
'u','v','x','y','w':
begin
salnovo:=sal*0.5+sal;
writeln('O salario novo e: ',salnovo:6:2);
end;
'z':writeln('A categoria digitada nao existe.');
end;
end.