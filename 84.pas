var n,m,i,j,minn,maxn,minm,maxm:longint;
    a:array[1..101,1..101] of char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(n,m);
  minn:=n+1;
  maxn:=0;
  minm:=m+1;
  maxm:=0;
    for i:=1 to n do
    begin
      for j:=1 to m do
      begin
      read(a[i,j]);
        if a[i,j]='*' then
        begin
        if i<minn then minn:=i;
        if i>maxn then maxn:=i;
        if j<minm then minm:=j;
        if j>maxm then maxm:=j;
        end;
      end;
    readln;
    end;
    for i:=minn to maxn do
      for j:=minm to maxm do
      a[i,j]:='*';
    for i:=1 to n do
    begin
      for j:=1 to m do
      write(a[i,j]);
    writeln;
    end;
  close(input); close(output);
end.