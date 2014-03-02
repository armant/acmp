var a,b:array[1..10000] of longint;
    c,n,m,i,j,k:longint;
procedure addin;
var r,z,s:longint;
begin
  r:=0;
  z:=j;
    while k<>0 do
    begin
    s:=b[z];
    b[z]:=(b[z]+k mod 10+r) mod 10;
    r:=(s+k mod 10+r) div 10;
    k:=k div 10;
    inc(z);
    end;
  if r>0 then b[z]:=r else dec(z);
  if z>m then m:=z;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(c);
  n:=1;
  a[n]:=1;
    for i:=1 to c do
    begin
    fillchar(b,sizeof(b),0);
      for j:=1 to n do
      begin
      k:=45*a[j];
      addin;
      end;
    a:=b;
    n:=m;
    end;
 
    for i:=n downto 1 do
    write(a[i]);
  close(input); close(output);
end.