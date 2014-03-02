var i,j,k,l,m,n,o:longint;
    a,b:array[1..31,1..31] of char;
    c,d:array[1..31] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  fillchar(a,sizeof(a),'0');
  readln(n);
    for i:=1 to n do
    begin
    j:=0;
      while not eoln do
      begin
      inc(j);
      read(a[i,j]);
      end;
    c[i]:=j;
    readln;
    end;
  fillchar(b,sizeof(b),'0');
  readln(m);
    for i:=1 to m do
    begin
    j:=0;
      while not eoln do
      begin
      inc(j);
      read(b[i,j]);
      end;
    d[i]:=j;
    readln;
    end;
    for i:=1 to n do
    begin
    o:=0;
      for j:=1 to m do
      begin
      l:=0;
        if c[i]=d[j] then
        for k:=1 to c[i] do
        if a[i,k]<>b[j,k] then inc(l);
      if l=1 then inc(o);
      end;
    write(o,' ');
    end;
  close(input); close(output);
end.