var n,c,i,j,r:longint;
    a,b:array[1..1001] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  c:=1;
  a[c]:=1;
    for i:=1 to n do
    begin
    r:=0;
    fillchar(b,sizeof(b),0);
      for j:=1 to c do
      begin
      b[j]:=(a[j]*2+r) mod 10;
      r:=(a[j]*2+r) div 10;
      end;
    if r<>0 then begin inc(c); b[c]:=r; end;
    a:=b;
    end;
 
    for i:=c downto 1 do
    write(a[i]);
  close(input);
  close(output);
end.