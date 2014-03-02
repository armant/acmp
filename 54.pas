var n,m,i,j,max,min:longint;
    a:array[1..101,1..101] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
  max:=-1001;
    for i:=1 to n do
    begin
    min:=1001;
      for j:=1 to m do
      begin
      read(a[i,j]);
      if a[i,j]<min then min:=a[i,j];
      end;
    if max<min then max:=min;
    end;
  write(max,' ');
  min:=1001;
    for j:=1 to m do
    begin
    max:=-1001;
      for i:=1 to n do
      if a[i,j]>max then max:=a[i,j];
    if min>max then min:=max;
    end;
  write(min);
  close(input); close(output);
end.