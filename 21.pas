var a,b,c:longint;
function max(a,b,c:longint):longint;
begin
if (a>=b) and (a>=c) then max:=a else
if (b>=a) and (b>=c) then max:=b else
if (c>=a) and (c>=b) then max:=c;
end;
function min(a,b,c:longint):longint;
begin
if (a<=b) and (a<=c) then min:=a else
if (b<=a) and (b<=c) then min:=b else
if (c<=a) and (c<=b) then min:=c;
end;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(a,b,c);
write(max(a,b,c)-min(a,b,c));
close(input);
close(output);
end.