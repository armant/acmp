var x1,y1,x2,y2,x3,y3,x,y,k,i,n:longint;
    a,a1,a2,a3:extended;
    t:array[1..1001] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(x,y,k);
  n:=0;
    for i:=1 to k do
    begin
    read(x1,y1,x2,y2,x3,y3);
    a:=abs(x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2))*0.5;
    a1:=abs(x*(y2-y3)+x2*(y3-y)+x3*(y-y2))*0.5;
    a2:=abs(x1*(y-y3)+x*(y3-y1)+x3*(y1-y))*0.5;
    a3:=abs(x1*(y2-y)+x2*(y-y1)+x*(y1-y2))*0.5;
    if (abs(a-a1-a2-a3)<=0.00001) and (a1<>0) and (a2<>0) and (a3<>0) then begin inc(n); t[n]:=i; end;
    end;
  writeln(n);
    for i:=1 to n do
    write(t[i],' ');
  close(input); close(output);
end.