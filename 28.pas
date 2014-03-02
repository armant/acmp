var x1,y1,x2,y2,xa,ya,xb,yb:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(x1,y1,x2,y2,xa,ya);
  if x1=x2 then
  begin
  yb:=ya;
  xb:=x1-(xa-x1);
  end else
  begin
  xb:=xa;
  yb:=y1-(ya-y1);
  end;
  write(xb,' ',yb);
  close(input); close(output);
end.