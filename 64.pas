var st,s:ansistring;
    m,i,c,j:longint;
    a:array[1..10000] of longint;
    b:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  c:=1;
  a[c]:=2;
  st:='2';
    for i:=3 to 100000 do
    begin
      if odd(i) then
      begin
      b:=true;
      j:=1;
        while (sqr(a[j])<=i) and (j<=c) do
        if i mod a[j]=0 then
        begin
        b:=false;
        break;
        end else inc(j);
 
        if b then
        begin
        inc(c);
        a[c]:=i;
        str(a[c],s);
        st:=st+s;
        end;
      end;
    end;
  read(m);
    for i:=1 to m do
    begin
    read(j);
    write(st[j]);
    end;
  close(input);
  close(output);
end.