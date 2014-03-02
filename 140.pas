var n,i,j,k:longint;
    a:array[1..101,1..101] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
      for j:=1 to n do
      begin
      read(a[i,j]);
      if a[i,j]=100000 then a[i,j]:=1000000;
      end;
    for k:=1 to n do
      for i:=1 to n do
        for j:=1 to n do
        if a[i,j]>a[i,k]+a[k,j] then a[i,j]:=a[i,k]+a[k,j];
    for k:=1 to n do
      for i:=1 to n do
        for j:=1 to n do
        if a[i,j]>a[i,k]+a[k,j] then
        begin
        write('YES');
        close(input);
        close(output);
        halt;
        end;
  write('NO');
  close(input); close(output);
end.