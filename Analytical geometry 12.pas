var x1,y1,x2,y2,x3,y3,x4,y4,x,y,k,i,n:longint;
    a,a1,a2,a3,a4:extended;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  k:=0;
    for i:=1 to n do
    begin
    read(x,y,x1,y1,x2,y2,x3,y3,x4,y4);
    a:=abs(x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2));
    a1:=abs(x1*(y2-y)+x2*(y-y1)+x*(y1-y2))*0.5;
    a2:=abs(x*(y2-y3)+x2*(y3-y)+x3*(y-y2))*0.5;
    a3:=abs(x4*(y-y3)+x*(y3-y4)+x3*(y4-y))*0.5;
    a4:=abs(x1*(y-y4)+x*(y4-y1)+x4*(y1-y))*0.5;
    if (abs(a-a1-a2-a3-a4)<=0.00001) then inc(k);
    end;
  write(k);
  close(input); close(output);
end.