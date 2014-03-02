var c1,c2,c3,c4:char;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
read(c1,c2,c3,c4);
if (c1=c4) and (c2=c3) then write('YES') else write('NO');
close(input);
close(output);
end.