var a,b,a1,b1:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
a1:=0;
b1:=0;
read(a,b);
a1:=a1+a;
b1:=b1+b;
read(a,b);
a1:=a1+a;
b1:=b1+b;
read(a,b);
a1:=a1+a;
b1:=b1+b;
read(a,b);
a1:=a1+a;
b1:=b1+b;
if a1>b1 then write(1) else if a1<b1 then write(2) else write('DRAW');
close(input);
close(output);
end.