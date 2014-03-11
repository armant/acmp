var st,s:array[1..50001] of char;
    v:array[1..50001] of longint;
    k,q,n,m:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  n:=0;
    while not eoln do
    begin
    inc(n);
    read(st[n]);
    end;
  readln;
  m:=0;
    while not eoln do
    begin
    inc(m);
    read(s[m]);
    end;
  v[1]:=0;
  k:=0;
   for q:=2 to m do
   begin
     while (k>0) and (s[k+1]<>s[q]) do k:=v[k];
   if s[k+1]=s[q] then inc(k);
   v[q]:=k;
   end;
  k:=0;
   for q:=1 to n do
   begin
     while (k>0) and (s[k+1]<>st[q]) do k:=v[k];
   if s[k+1]=st[q] then inc(k);
   if k=m then write(q-m,' ');
   end;
  close(input); close(output);
end.