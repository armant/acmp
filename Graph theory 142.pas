var n,m,i,cc,j,v,k:longint;
    f,t,w,c:array[1..6001] of longint;
procedure QS(l,r:longint);
var i,j,x,y:longint;
begin
  i:=l;
  j:=r;
  x:=w[random(j-i)+i];
    repeat
      while w[i]<x do inc(i);
 
      while w[j]>x do dec(j);
 
      if i<=j then
      begin
      y:=w[i];
      w[i]:=w[j];
      w[j]:=y;
      y:=f[i];
      f[i]:=f[j];
      f[j]:=y;
      y:=t[i];
      t[i]:=t[j];
      t[j]:=y;
      inc(i);
      dec(j);
      end;
    until i>j;
  if l<j then QS(l,j);
  if i<r then QS(i,r);
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
    if n=1 then
    begin
    write(0);
    close(input); close(output);
    halt;
    end;
 
    for i:=1 to m do
    read(f[i],t[i],w[i]);
  QS(1,m);
  fillchar(c,sizeof(c),0);
  cc:=0;
  v:=0;
    for i:=1 to m do
    begin
      if (c[f[i]]=0) and (c[t[i]]=0) then
      begin
      inc(cc);
      c[f[i]]:=cc;
      c[t[i]]:=cc;
      v:=v+w[i];
      end
    else
      if (c[f[i]]=0) and (c[t[i]]<>0) then
      begin
      c[f[i]]:=c[t[i]];
      v:=v+w[i];
      end
    else
      if (c[f[i]]<>0) and (c[t[i]]=0) then
      begin
      c[t[i]]:=c[f[i]];
      v:=v+w[i];
      end
    else
      if (c[f[i]]<>0) and (c[t[i]]<>0) and (c[f[i]]<>c[t[i]]) then
      begin
      k:=c[f[i]];
        for j:=1 to n do
        if c[j]=k then c[j]:=c[t[i]];
      v:=v+w[i];
      end;
    end;
  write(v);
  close(input); close(output);
end.