var n,c,i,k,j,x:longint;
    a,b:array[1..3001] of longint;
procedure addin;
var r,z:longint;
begin
  x:=j-1;
  r:=0;
    while k<>0 do
    begin
    inc(x);
    z:=b[x];
    b[x]:=(b[x]+r+(k mod 10)) mod 10;
    r:=(z+r+(k mod 10)) div 10;
    k:=k div 10;
    end;
  if r<>0 then
  begin
  inc(x);
  b[x]:=r;
  end;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  if n=0 then
  begin
  write(1);
  close(input); close(output);
  halt;
  end;
  a[1]:=1;
  c:=1;
    for i:=1 to n do
    begin
    fillchar(b,sizeof(b),0);
      for j:=1 to c do
      begin
      k:=i*a[j];
      addin;
      end;
    c:=x;
    a:=b;
    end;
 
    for i:=c downto 1 do
    write(a[i]);
  close(input); close(output);
end.