var n,i,c,max,imax,l,j:longint;
    a:array[1..101] of longint;
    b:array[1..101] of boolean;
    s:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
    read(a[i]);
  fillchar(b,sizeof(b),false);
  s:=false;
  c:=0;
  l:=0;
    while not s do
    begin
    max:=0;
      for i:=1 to n do
      if (not b[i]) and (a[i]>max) then begin max:=a[i]; imax:=i; end;
    c:=c+(imax-l)*max;
      for j:=l+1 to imax do
      b[j]:=true;
    l:=imax;
    s:=true;
      for i:=1 to n do
      if not b[i] then begin s:=false; break; end;
    end;
  write(c);
  close(input);
  close(output);
end.