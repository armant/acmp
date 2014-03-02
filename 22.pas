var n,c:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  c:=0;
    while n<>0 do
    begin
    if n mod 2=1 then inc(c);
    n:=n div 2;
    end;
  write(c);
  close(input);
  close(output);
end.