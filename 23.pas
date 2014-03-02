var n,i,s:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  s:=0;
    for i:=1 to n div  2 do
    if n mod i=0 then s:=s+i;
  write(s+n);
  close(input);
  close(output);
end.