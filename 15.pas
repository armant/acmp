var n,i,c,r:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  c:=0;
    for i:=1 to sqr(n) do
    begin
    read(r);
    if r=1 then inc(c);
    end;
  write(c div 2);
  close(input);
  close(output);
end.