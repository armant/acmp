{$M 20000000}
uses math;
var n,i:longint;
    a,b:array[0..101] of longint;
procedure QS(l,r:longint);
var i,j,x,y:longint;
begin
  i:=l;
  j:=r;
  x:=a[random(j-i)+i];
    repeat
      while a[i]<x do inc(i);
 
      while a[j]>x do dec(j);
 
      if i<=j then
      begin
      y:=a[i];
      a[i]:=a[j];
      a[j]:=y;
      inc(i);
      dec(j);
      end;
    until i>j;
  if i<r then QS(i,r);
  if l<j then QS(l,j);
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
    read(a[i]);
  QS(1,n);
  b[1]:=100000;
  b[2]:=a[2]-a[1];
    for i:=3 to n do
    b[i]:=min(b[i-1],b[i-2])+a[i]-a[i-1];
  write(b[n]);
  close(input); close(output);
end.