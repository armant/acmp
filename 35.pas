var k,i,n,m:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(k);
    for i:=1 to k do
    begin
    read(n,m);
    writeln(19*m+((n+239)*(n+366)) div 2);
    end;
  close(input);
  close(output);
end.