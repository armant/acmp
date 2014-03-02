var n,a,b:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(n,a,b);
write(a*b*2*n);
close(input);
close(output);
end.