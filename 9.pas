var a:array[1..31000] of longint;
    n,i,c,min,max,min1,max1:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  max:=-2000000000;
  min:=2000000000;
  c:=0;
    for i:=1 to n do
    begin
    read(a[i]);
    if a[i]>0 then c:=c+a[i];
      if a[i]>max then
      begin
      max:=a[i];
      max1:=i;
      end;
 
      if a[i]<min then
      begin
      min:=a[i];
      min1:=i;
      end;
    end;
  write(c,' ');
  c:=0;
  if min1<max1 then
    for i:=min1+1 to max1-1 do
    begin
    if i=min1+1 then c:=1;
    c:=c*a[i];
    end else
  if min1>max1 then
    for i:=max1+1 to min1-1 do
    begin
    if i=max1+1 then c:=1;
    c:=c*a[i];
    end;
  write(c);
  close(input);
  close(output);
end.