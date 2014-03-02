var n,i,j:longint;
    a:array[1..9] of shortint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  if n=0 then
  begin
  write(10);
  close(input);
  close(output);
  halt;
  end
else
  if n=1 then
  begin
  write(1);
  close(input);
  close(output);
  halt;
  end;
  fillchar(a,sizeof(a),0);
    for i:=9 downto 2 do
      while (n mod i=0) and (n>1) do
      begin
      inc(a[i]);
      n:=n div i;
      end;
  if n>1 then
  begin
  write(-1);
  close(input);
  close(output);
  halt;
  end;
    for i:=2 to 9 do
      for j:=1 to a[i] do
      write(i);
  close(input);
  close(output);
end.