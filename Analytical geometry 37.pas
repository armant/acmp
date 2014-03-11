var n,i,x1,y1,x2,y2:longint;
    q:real;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,q);
    for i:=1 to n do
    begin
    read(x1,y1,x2,y2);
      if sqrt(sqr(x1)+sqr(y1))*q<sqrt(sqr(x2)+sqr(y2)) then
      begin
      write('No');
      close(input);
      close(output);
      halt;
      end;
    end;
  write('Yes');
  close(input); close(output);
end.