var n,a,b,i,c:longint;
 
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(n);
for i:=1 to n do
begin
read(c);
if c=0 then inc(a) else inc(b);
end;
if a<=b then write(a) else write(b);
close(input);
close(output);
end.