var n,i:longint;
a:array[1..1001] of longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(n);
for i:=1 to n do
read(a[i]);
for i:=n downto 1 do
write(a[i],' ');
close(input);
close(output);
end.