var n,i,j,k,c:longint;
    a:array[0..102,0..102] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  fillchar(a,sizeof(a),0);
  c:=1;
  k:=0;
  i:=1;
  j:=0;
    while k<n*n do
    begin
      if c mod 4=1 then
      begin
      inc(j);
      inc(k);
      a[i,j]:=k;
      if (a[i,j+1]<>0) or (j=n) then inc(c);
      end
    else
      if c mod 4=2 then
      begin
      inc(i);
      inc(k);
      a[i,j]:=k;
      if (a[i+1,j]<>0) or (i=n) then inc(c);
      end
    else
      if c mod 4=3 then
      begin
      dec(j);
      inc(k);
      a[i,j]:=k;
      if (a[i,j-1]<>0) or (j=1) then inc(c);
      end
    else
      if c mod 4=0 then
      begin
      dec(i);
      inc(k);
      a[i,j]:=k;
      if (a[i-1,j]<>0) or (i=1) then inc(c);
      end;
    end;
    for i:=1 to n do
    begin
      for j:=1 to n do
      write(a[i,j],' ');
    writeln;
    end;
  close(input); close(output);
end.