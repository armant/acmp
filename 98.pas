var n,l,r,f,s:longint;
    a:array[1..10001] of longint;
    p:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for l:=1 to n do
    read(a[l]);
  l:=1;
  r:=n;
  p:=true;
  f:=0;
  s:=0;
    while l<=r do
    begin
      if a[l]>=a[r] then
      begin
      if p then begin f:=f+a[l]; inc(l); p:=false; end
           else begin s:=s+a[l]; inc(l); p:=true;  end;
      end
    else
      begin
      if p then begin f:=f+a[r]; dec(r); p:=false; end
           else begin s:=s+a[r]; dec(r); p:=true;  end;
      end;
    end;
  write(f,':',s);
  close(input); close(output);
end.