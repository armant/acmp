var w,h,n,i,x1,y1,x2,y2,j,k,c:longint;
    a:array[0..101,0..101] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(w,h,n);
  fillchar(a,sizeof(a),0);
    for i:=1 to n do
    begin
    read(x1,y1,x2,y2);
      for j:=y1 to y2-1 do
        for k:=x1 to x2-1 do
        a[j,k]:=1;
    end;
  c:=0;
    for i:=0 to h-1 do
      for j:=0 to w-1 do
      if a[i,j]=0 then inc(c);
  write(c);
  close(input);
  close(output);
end.