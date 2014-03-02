var a:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(a);
write(a div 6,' ',a div 3*2,' ',a div 6);
close(input);
close(output);
end.