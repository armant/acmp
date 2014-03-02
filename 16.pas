var n,c:longint;
procedure stairs(j,k:longint);
var i:longint;
begin
    for i:=j to n do
    begin
    if k+i=n then begin inc(c); break end;
    if k+i<=n then stairs(i+1,k+i);
    if k+i>n then break;
    end;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  c:=0;
  stairs(1,0);
  write(c);
  close(input);
  close(output);
end.