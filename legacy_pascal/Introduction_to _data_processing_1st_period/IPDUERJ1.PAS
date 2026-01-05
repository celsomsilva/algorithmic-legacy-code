program crescente (input, output);
var A, B, C: real;
begin
writeln ('ENTRE COM O PRIMEIRO VALOR');
read (A);
writeln ('ENTRE COM O SEGUNDO VALOR');
read (B);
writeln ('ENTRE COM O TERCEIRO VALOR');
read (C);
if (A>B)
then
if (A>C)
then
if (B>C)
then writeln (C, B, A)
else writeln (B, C, A)
else writeln (B, A, C)
else
if (B>C)
then
if (A>C)
then writeln (C, A, B)
else writeln (A, C, B)
else writeln (A, B, C);
end.