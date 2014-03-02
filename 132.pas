var n,f,t,i,j,m,mi:longint;
    a:array[1..2001,1..2001] of longint;
    w:array[1..2001] of boolean;
    d:array[1..2001] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,f,t);
    for i:=1 to n do
      for j:=1 to n do
      read(a[i,j]);
  fillchar(w,sizeof(w),false);
    for j:=1 to n do
    begin
    if a[f,j]=-1 then d[j]:=maxlongint else d[j]:=a[f,j]
    end;
  w[f]:=true;
    while not w[2001] do
    begin
    m:=maxlongint;
      for i:=1 to n do
      if (not w[i]) and (d[i]<>-1) and (d[i]<m) then begin m:=d[i]; mi:=i; end;
    if m=maxlongint then break;
    w[mi]:=true;
      for j:=1 to n do
      if (a[mi,j]<>-1) and (a[mi,j]+d[mi]<d[j]) then d[j]:=a[mi,j]+d[mi];
    end;
  if d[t]=maxlongint then write(-1) else write(d[t]);
  close(input); close(output);
end.