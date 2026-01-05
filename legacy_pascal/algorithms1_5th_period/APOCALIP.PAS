program apocalipse;
uses crt;
var
i,j,k,l,m,n,o,p,r,s:longint;
begin
clrscr;
i:=65;
j:=65;
k:=65;
l:=65;
m:=65;
n:=65;
o:=65;
p:=65;
r:=65;
for i:=65 to 90 do
begin
for j:=65 to 90 do
begin
s:=i+j;
for k:=65 to 90 do
begin
s:=s+k;
for l:=65 to 90 do
begin
s:=s+l;
for m:=65 to 90 do
begin
s:=s+m;
for n:=65 to 90 do
begin
s:=s+n;
for o:=65 to 90 do
begin
s:=s+o;
for p:=65 to 90 do
begin
s:=s+p;
for r:=65 to 90 do
begin
s:=s+r;
if(i<>j) then
if (k<>l)then
if(s=666) then
begin
case i of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case j of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case k of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case l of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case m of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case n of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case o of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case p of
65:write('a');66:write('b');67:write('c');68:write('d');69:write('e');
70:write('f');71:write('g');72:write('h');73:write('i');74:write('j');
75:write('k');76:write('l');77:write('m');78:write('n');79:write('o');
80:write('p');81:write('q');82:write('r');83:write('s');84:write('t');
85:write('u');86:write('v');87:write('w');88:write('x');89:write('y');
90:write('z');
end;
case r of
65:writeln('a');66:writeln('b');67:writeln('c');68:writeln('d');69:writeln('e');
70:writeln('f');71:writeln('g');72:writeln('h');73:writeln('i');74:writeln('j');
75:writeln('k');76:writeln('l');77:writeln('m');78:writeln('n');79:writeln('o');
80:writeln('p');81:writeln('q');82:writeln('r');83:writeln('s');84:writeln('t');
85:writeln('u');86:writeln('v');87:writeln('w');88:writeln('x');89:writeln('y');
90:writeln('z');
end;
end;
s:=s-r;
end;
s:=s-p;
end;
s:=s-o;
end;
s:=s-n;
end;
s:=s-m;
end;
s:=s-l;
end;
s:=s-k;
end;
s:=s-j;
end;
s:=s-i;
end;
delay(6000);
end.