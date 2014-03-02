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
        if (a[i,k]<>-1) and (a[k,j]<>-1) and
        ((a[i,j]>a[i,k]+a[k,j]) or (a[i,j]=-1)) then a[i,j]:=a[i,k]+a[k,j];
  k:=a[1,1];
    for i:=1 to n do
      for j:=1 to n do
      if a[i,j]>k then k:=a[i,j];
  write(k);
  close(input); close(output);
end.