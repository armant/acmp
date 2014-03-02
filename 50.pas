var a:array[1..1001] of char;
    n,m,i,j,k,c:longint;
    b:array[1..101,1..101] of char;
    s:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  n:=0;
    while not eoln do
    begin
    inc(n);
    read(a[n]);
    end;
  readln;
  m:=0;
    while not eoln do
    begin
    inc(m);
    read(b[1,m]);
    end;
 
    for i:=2 to m do
      for j:=1 to m do
      if j=1 then b[i,j]:=b[i-1,m] else b[i,j]:=b[i-1,j-1];
  c:=0;
    for i:=1 to n-m+1 do
    begin
    s:=true;
      for j:=1 to m do
      begin
        for k:=1 to m do
        begin
        if b[j,k]<>a[i+k-1] then break;
        if k=m then s:=false;
        end;
 
        if not s then
        begin
        inc(c);
        break;
        end;
      end;
    end;
  write(c);
  close(input); close(output);
end.