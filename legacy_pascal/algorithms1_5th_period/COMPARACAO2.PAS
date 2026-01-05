program comparacao2;
var a,b,c:longint;
begin
writeln('Escreva os numeros: ');
readln(a);
readln(b);
readln(c);
if (a>b) then
    if(a>c) then
	if(b>c) then
	writeln('O maior e ',a,' e o menor e ',c,'.')
	else
	writeln('O maior e ',a,' e o menor e ',b,'.')
    else
	writeln('O maior e ',c,' e o menor e ',b,'.')
else	
    if(b>c) then
    	if(a>c) then
	writeln('O maior e ',b,' e o menor e ',c,'.')
	else
	writeln('O maior e ',b,' e o menor e ',a,'.')
    else
	writeln('O maior e ',c,' e o menor e ',a,'.');
end.
	