var n,m,i,j,s,z,k,c:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
  s:=0;
  z:=0;
  k:=0;
  c:=0;
    for i:=1 to n do
      for j:=1 to m do
      if i*j mod 5=0 then inc(s) else
      if i*j mod 3=0 then inc(z) else
      if i*j mod 2=0 then inc(k) else inc(c);
  writeln('RED : ',k);
  writeln('GREEN : ',z);
  writeln('BLUE : ',s);
  writeln('BLACK : ',c);
  close(input);
  close(output);
end.