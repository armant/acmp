var n,c,i,xn,yn,j:longint;
    p:int64;
    x,y:array[1..1001] of longint;
    d:real;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,c,p);
    for i:=1 to n do
    read(x[i],y[i]);
  read(xn,yn);
    for i:=1 to n do
    begin
    d:=sqrt(sqr(xn-x[i])+sqr(yn-y[i]));
      for j:=1 to n do
      d:=d+sqrt(sqr(x[j]-x[i])+sqr(y[j]-y[i]));
 
      if d*c<=p then
      begin
      write('YES');
      close(input);
      close(output);
      halt;
      end;
    end;
  write('NO');
  close(input);
  close(output);
end.