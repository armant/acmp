var a,b:array[1..10001] of int64;
    n,m,i,j:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  a[1]:=2;
  a[2]:=3;
  a[3]:=4;
  a[4]:=7;
  b[1]:=1;
  b[2]:=5;
  b[3]:=6;
  b[4]:=8;
  m:=3;
    for i:=5 to n do
    begin
    a[i]:=b[i-1]+b[i-3];
      for j:=a[i-1]+1 to a[i]-1  do
      if m<n then
      begin
      inc(m);
      b[m]:=j;
      end;
    end;
  writeln(a[n]);
  write(b[n]);
  close(input); close(output);
end.