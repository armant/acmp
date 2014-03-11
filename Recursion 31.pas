var n,k,m:longint;
    a:array[1..10] of longint;
procedure BT(c:longint);
var i,j,l:longint;
    b:boolean;
begin
    if c=n+1 then
    begin
    l:=0;
      for i:=1 to n do
      if a[i]=i then inc(l);
    if l=k then inc(m);
    end;
 
    for i:=1 to n do
    begin
    b:=true;
      for j:=1 to c-1 do
      if a[j]=i then begin b:=false; break; end;
    if b then begin a[c]:=i; BT(c+1); end;
    end;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,k);
  m:=0;
  BT(1);
  write(m);
  close(input);
  close(output);
end.