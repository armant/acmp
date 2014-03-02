var n,i,c,j,k:longint;
    a:array[1..100001] of longint;
    b:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  k:=0;
  c:=1;
  a[c]:=2;
    for i:=3 to 2*n-1 do
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
        if i>n then inc(k);
        end;
      end;
    end;
  write(k);
  close(input);
  close(output);
end.