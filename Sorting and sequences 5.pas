var n,i,s3,s4:longint;
    a:array[1..101] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  for i:=1 to n do
  read(a[i]);
  s3:=0;
  for i:=1 to n do
  if a[i] mod 2=1 then
    begin
    inc(s3);
    write(a[i],' ');
    end;
  writeln;
  s4:=0;
  for i:=1 to n do
  if a[i] mod 2=0 then
    begin
    inc(s4);
    write(a[i],' ');
    end;
  writeln;
  if s3>s4 then write('NO') else write('YES');
  close(input);
  close(output);
end.