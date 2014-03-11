{$M 20000000}
var n,m,i,j:longint;
    v,next,head,c:array[1..2001] of longint;
procedure yes;
begin
  write('YES');
  close(input); close(output);
  halt;
end;
procedure dfs(i:longint);
var j:longint;
begin
  j:=head[i];
    while j<>0 do
    begin
      if c[v[j]]=0 then
      begin
      if c[i]=1 then c[v[j]]:=2 else c[v[j]]:=1;
      dfs(v[j]);
      end
    else
      if c[i]=c[v[j]] then
      begin
      write('NO');
      close(input); close(output);
      halt;
      end;
    j:=next[j];
    end;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
  if n=1 then yes;
    for i:=1 to m do
    begin
    read(j,v[i]);
    next[i]:=head[j];
    head[j]:=i;
    v[i+m]:=j;
    next[i+m]:=head[v[i]];
    head[v[i]]:=i+m;
    end;
  fillchar(c,sizeof(c),0);
    for i:=1 to n do
    if c[i]=0 then begin c[i]:=1; dfs(i); end;
  yes;
end.