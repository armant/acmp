var n,i:longint;
    a:array[1..30001] of longint;
    b:array[1..30001] of longint;
function min(a,b:longint):longint;
begin
if a<=b then min:=a else min:=b;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
    read(a[i]);
  b[1]:=0;
  b[2]:=abs(a[2]-a[1]);
    for i:=3 to n do
    b[i]:=min(abs(a[i]-a[i-1])+b[i-1],3*abs(a[i]-a[i-2])+b[i-2]);
  write(b[n]);
  close(input);
  close(output);
end.