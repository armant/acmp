var a,b,c:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(a,b,c);
if a*b=c then write('YES') else write('NO');
close(input);
close(output);
end.