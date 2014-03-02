var n,m,i,j:longint;
    s:int64;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
  if n<m then
  begin
  write(0);
  close(input);
  close(output);
  halt;
  end
  else
  if m=1 then
  begin
  write(n);
  close(input);
  close(output);
  halt;
  end
  else
  if (m=0) or (n=m) then
  begin
  write(1);
  close(input);
  close(output);
  halt;
  end;
  s:=0;
    for i:=0 to n-m do
    if (i+1)*m-i<=n then s:=s+n-(i+1)*(m-1);
  write(s);
  close(input);
  close(output);
end.