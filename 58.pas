var t,n,m,y,i,j:longint;
    a:array[1..101,1..101] of longint;
    b:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(t);
    for y:=1 to t do
    begin
    read(n,m);
      for i:=1 to n do
        for j:=1 to m do
        read(a[i,j]);
    b:=true;
      for i:=1 to n-1 do
      begin
        for j:=1 to m-1 do
        if ((a[i,j]=0) and (a[i,j+1]=0) and (a[i+1,j]=0) and (a[i+1,j+1]=0))
        or ((a[i,j]=1) and (a[i,j+1]=1) and (a[i+1,j]=1) and (a[i+1,j+1]=1))
        then begin
             b:=false;
             writeln('NO');
             break;
             end;
      if not b then break;
      end;
    if b then writeln('YES');
    end;
  close(input);
  close(output);
end.