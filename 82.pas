var n,m,i,j:longint;
    a,b:array[0..100001] of boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
  fillchar(a,sizeof(a),false);
    for i:=1 to n do
    begin
    read(j);
    a[j]:=true;
    end;
  fillchar(b,sizeof(b),false);
    for i:=1 to m do
    begin
    read(j);
    b[j]:=true;
    end;
    for i:=0 to 100000 do
    if (a[i]) and (b[i]) then write(i,' ');
  close(input); close(output);
end.