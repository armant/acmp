var x1,y1,r1,x2,y2,r2:longint;
    d:real;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(x1,y1,r1,x2,y2,r2);
  d:=sqrt(sqr(x2-x1)+sqr(y2-y1));
  if (d<=r1+r2) and (r1<=d+r2) and (r2<=d+r1) then write('YES') else write('NO');
  close(input);
  close(output);
end.