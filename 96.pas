var n,m,y,x,i,j,k,c:longint;
    a:array[0..102,0..102] of boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m,y,x);
  k:=0;
  c:=1;
  i:=1;
  j:=0;
  fillchar(a,sizeof(a),false);
    while (i<>y) or (j<>x) do
    begin
      if c mod 4=1 then
      begin
      inc(j);
      a[i,j]:=true;
      inc(k);
      if (a[i,j+1]) or (j=m) then inc(c);
      end
    else
      if c mod 4=2 then
      begin
      inc(i);
      a[i,j]:=true;
      inc(k);
      if (a[i+1,j]) or (i=n) then inc(c);
      end
    else
      if c mod 4=3 then
      begin
      dec(j);
      a[i,j]:=true;
      inc(k);
      if (a[i,j-1]) or (j=1) then inc(c);
      end
    else
      if c mod 4=0 then
      begin
      dec(i);
      a[i,j]:=true;
      inc(k);
      if (a[i-1,j]) or (i=1) then inc(c);
      end;
    end;
  write(k);
  close(input); close(output);
end.