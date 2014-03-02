{$M 20000000}
var n,s,i,j,k,m:longint;
    v,next,head:array[1..50001] of longint;
    u:array[1..101] of boolean;
procedure dfs(i:longint);
var j:longint;
begin
  u[i]:=true;
  inc(k);
  j:=head[i];
    while j<>0 do
    begin
    if not u[v[j]] then dfs(v[j]);
    j:=next[j];
    end;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,s);
  m:=0;
    for i:=1 to n do
      for j:=1 to n do
      begin
      read(k);
        if k=1 then
        begin
        inc(m);
        v[m]:=j;
        next[m]:=head[i];
        head[i]:=m;
        end;
      end;
  k:=-1;
  fillchar(u,sizeof(u),false);
  dfs(s);
  write(k);
  close(input); close(output);
end.