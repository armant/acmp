var k,i,j,l,c,m:longint;
    a:array[1..100001] of longint;
    b:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(k);
  c:=1;
  a[c]:=2;
  j:=2;
    for i:=1 to 40000 do
    begin
    inc(j);
      if odd(j) then
      begin
      b:=true;
      l:=1;
        while (sqr(a[l])<=j) and (l<=c) do
        if j mod a[l]=0 then
        begin
        b:=false;
        break;
        end else inc(l);
 
        if b then
        begin
        inc(c);
        a[c]:=j;
        end;
      end;
    end;
  write(a[a[k]]);
  close(input);
  close(output);
end.