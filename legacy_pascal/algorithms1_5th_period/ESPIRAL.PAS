program espiral;
const
graus_rad=57.3;
espiras=10;
var
x,y,xant,yant,angulo:integer;
radiano,passo:real;
begin
hires;
write('passo:');
readln(passo);
xant:=319;
yant:=99;
for angulo:=0 to espiras*360 do
begin
radiano:=angulo/graus_rad;
x:=trunc(passo*(radiano*cos(radiano))*2.1)+319;
y:=trunc(passo*radiano*sin(radiano))+99;
draw(xant,yant,x,y,3);
xant:=x;
yant:=y;
end;
end.