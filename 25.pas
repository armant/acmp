var a,b:longint;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(a,b);
if a>b then write('>') else if a<b then write('<') else write('=');
close(input);
close(output);
end.