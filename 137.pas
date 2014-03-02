var n,i,j,k:longint;
    a:array[1..101,1..101] of double;
    b:array[1..101,1..101] of longint;
    p:array[1..101,1..101] of boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
      for j:=1 to n do
      begin
      read(a[i,j]);
        if a[i,j]=0 then
        begin
        p[i,j]:=false;
        b[i,j]:=0;
        end
      else
        begin
        p[i,j]:=true;
        b[i,j]:=1;
        end;
      end;
    for k:=1 to n do
      for i:=1 to n do
        for j:=1 to n do
        begin
        if (p[i,k]) and (p[k,j]) and ((not p[i,j]) or (a[i,j]>a[i,k]+a[k,j]))
        then begin a[i,j]:=a[i,k]+a[k,j]; p[i,j]:=true; b[i,j]:=1; end;
        if i=j then b[i,j]:=1;
        end;
    for k:=1 to n do
      for i:=1 to n do
        for j:=1 to n do
        if (p[i,k]) and (p[k,j]) and (a[i,j]>a[i,k]+a[k,j]) then
        begin
        a[i,j]:=a[i,k]+a[k,j];
        b[i,j]:=2;
        end;
    for i:=1 to n do
    begin
      for j:=1 to n do
      write(b[i,j],' ');
    writeln;
    end;
  close(input); close(output);
end.