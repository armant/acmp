var n,e,m,i,k,j,l,en:longint;
    s,t,head,d:array[0..10001] of longint;
    v,next,o,p:array[0..1000001] of longint;
    u:array[0..10001] of boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,e,m);
  en:=0;
    for i:=1 to m do
    begin
    read(k);
      for j:=1 to k do
      begin
      read(s[j],t[j]);
        for l:=1 to j-1 do
        begin
        inc(en);
        v[en]:=s[j];
        next[en]:=head[s[l]];
        head[s[l]]:=en;
        o[en]:=t[l];
        p[en]:=t[j];
        end;
      end;
    end;
  fillchar(u,sizeof(u),false);
  u[1]:=true;
    for i:=2 to n do
    d[i]:=maxlongint;
  j:=head[1];
    while j>0 do
    begin
    if d[v[j]]>p[j] then d[v[j]]:=p[j];
    j:=next[j];
    end;
  d[1]:=0;
    while not u[10001] do
    begin
    m:=maxlongint;
      for i:=1 to n do
      if (not u[i]) and (d[i]<m) then begin m:=d[i]; k:=i; end;
    if m=maxlongint then break;
    u[k]:=true;
    j:=head[k];
      while j>0 do
      begin
      if (d[v[j]]>p[j]) and (d[k]<=o[j]) then d[v[j]]:=p[j];
      j:=next[j];
      end;
    end;
  if d[e]=maxlongint then write(-1) else write(d[e]);
  close(input); close(output);
end.