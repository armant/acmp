var n,i,j,k:longint;
    a:array[1..101,1..101] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
      for j:=1 to n do
      read(a[i,j]);
    for k:=1 to n do
      for i:=1 to n do
        for j:=1 to n do
        if a[i,j]>a[i,k]+a[k,j] then a[i,j]:=a[i,k]+a[k,j];
    for i:=1 to n do
    begin
      for j:=1 to n do
      write(a[i,j],' ');
    writeln;
    end;
  close(input); close(output);
end.