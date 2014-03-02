var a:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(a);
write(a);
close(input);
close(output);
end.