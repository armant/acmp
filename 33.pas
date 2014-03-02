var a,b:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(a,b);
write(b-1,' ',a-1);
close(input);
close(output);
end.