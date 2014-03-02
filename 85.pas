uses math;
var n,m,i:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
    for i:=min(n,m) downto 1 do
    if (n mod i=0) and (m mod i=0) then break;
 
    for n:=1 to i do
    write(1);
  close(input); close(output);
end.