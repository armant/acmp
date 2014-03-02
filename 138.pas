var n,m,i,j:longint;
    f,t,w,d:array[1..10001] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
    for i:=1 to m do
    read(f[i],t[i],w[i]);
 
    for i:=1 to n do
    d[i]:=30000;
  d[1]:=0;
    for i:=1 to n-1 do
      for j:=1 to m do
      if (d[f[j]]<>30000) and (d[t[j]]>d[f[j]]+w[j]) then d[t[j]]:=d[f[j]]+w[j];
    for i:=1 to n do
    write(d[i],' ');
  close(input); close(output);
end.