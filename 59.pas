var n,k,m,s:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,k);
  m:=1;
  s:=0;
    while n<>0 do
    begin
    m:=m*(n mod k);
    s:=s+(n mod k);
    n:=n div k;
    end;
  write(m-s);
  close(input);
  close(output);
end.