var s:int64;
    i,n:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  if n>0 then
    begin
    s:=0;
    for i:=1 to n do
    s:=s+i;
    write(s);
    end else
 
    begin
    s:=0;
    for i:=1 downto n do
    s:=s+i;
    write(s);
    end;
  close(input);
  close(output);
end.