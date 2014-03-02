var n,i,c,z,max:longint;
    a:array[1..1000001] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
    read(a[i]);
  c:=0;
  max:=0;
  z:=0;
    for i:=1 to n-1 do
      if z=0 then
      begin
        if a[i]<a[i+1] then
        begin
        z:=-1;
        inc(c);
        end
      else
        if a[i]>a[i+1] then
        begin
        z:=1;
        inc(c);
        end;
      end
    else
      if z=1 then
      begin
        if a[i]<a[i+1] then
        begin
        inc(c);
        z:=-1;
        end
      else
        if a[i]>a[i+1] then
        begin
        if max<c then max:=c;
        c:=1;
        end
      else
        if a[i]=a[i+1] then
        begin
        if max<c then max:=c;
        c:=0;
        z:=0;
        end;
      end
    else
      if z=-1 then
      begin
        if a[i]>a[i+1] then
        begin
        inc(c);
        z:=1;
        end
      else
        if a[i]<a[i+1] then
        begin
        if max<c then max:=c;
        c:=1;
        end
      else
        if a[i]=a[i+1] then
        begin
        if max<c then max:=c;
        c:=0;
        z:=0;
        end;
      end;
  if c>max then max:=c;
  write(max+1);
  close(input);
  close(output);
end.