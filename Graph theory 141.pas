var n,i,j:longint;
    a:array[1..101,1..101] of longint;
    b:array[1..101] of boolean;
procedure yes;
begin
  write('YES');
  close(input); close(output);
  halt;
end;
procedure no;
begin
  write('NO');
  close(input); close(output);
  halt;
end;
procedure dfs(i:longint);
var j:longint;
begin
  b[i]:=true;
    for j:=1 to n do
      if a[i,j]=1 then
      begin
      if b[j] then no;
      a[j,i]:=0;
      dfs(j);
      end;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  if n=1 then yes;
    for i:=1 to n do
      for j:=1 to n do
      read(a[i,j]);
  fillchar(b,sizeof(b),false);
  dfs(1);
    for i:=1 to n do
    if not b[i] then no;
  yes;
end.