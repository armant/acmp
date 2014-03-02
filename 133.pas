var n,i,m,x,y,min,mi:longint;
    head,next,v,w,p,d:array[1..10001] of longint;
    u:array[1..101] of boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
    read(p[i]);
  read(m);
  fillchar(head,sizeof(head),0);
  fillchar(next,sizeof(next),0);
  fillchar(v,sizeof(v),0);
  m:=m*2;
    for i:=1 to m do
    begin
      if odd(i) then
      begin
      read(x,y);
      v[i]:=y;
      next[i]:=head[x];
      head[x]:=i;
      w[i]:=p[x];
      end
    else
      begin
      mi:=x;
      x:=y;
      y:=mi;
      v[i]:=y;
      next[i]:=head[x];
      head[x]:=i;
      w[i]:=p[x];
      end;
    end;
  fillchar(u,sizeof(u),false);
  u[1]:=true;
    for i:=1 to n do
    d[i]:=10000;
  d[1]:=0;
  i:=head[1];
    while i<>0 do
    begin
    d[v[i]]:=w[i];
    i:=next[i];
    end;
 
    while not u[101] do
    begin
    min:=10000;
      for i:=1 to n do
      if (not u[i]) and (min>d[i]) then begin min:=d[i]; mi:=i; end;
    if min=10000 then break;
    u[mi]:=true;
    i:=head[mi];
      while i<>0 do
      begin
      if d[v[i]]>d[mi]+w[i] then d[v[i]]:=d[mi]+w[i];
      i:=next[i];
      end;
    end;
  if d[n]=10000 then write(-1) else write(d[n]);
  close(input); close(output);
end.