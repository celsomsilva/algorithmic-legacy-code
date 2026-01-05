program relogio;
uses crt;
var a,b,c:integer;d,e,f:real;
label 1;
begin
clrscr;
for a:=0 to 23 do
begin
d:=a;
gotoxy(1,5);
write(d:2:0,':');
    for b:=0 to 59 do
    begin
    e:=b;
    gotoxy(4,5);
    write(e:2:0,':');
        for c:=0 to 59 do
        begin
        f:=c;
        gotoxy(7,5);
        write(f:2:0);
        delay(1000);
        if keypressed=true then
        begin
        writeln;
        goto 1;
        end;
        end;
    end;
end;
1:end.