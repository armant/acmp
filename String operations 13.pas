var a,b:array[1..5] of char;
    i,j:longint;
    c,d:array[0..9] of boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
    for i:=1 to 4 do
    read(a[i]);
  read(b[1]);
    for i:=1 to 4 do
    read(b[i]);
  fillchar(c,sizeof(c),false);
  j:=0;
    for i:=1 to 4 do
    if a[i]=b[i] then
    begin
    c[i]:=true;
    inc(j);
    end;
  write(j,' ');
  fillchar(d,sizeof(d),false);
    for i:=1 to 4 do
    if not c[i] then d[ord(a[i])-48]:=true;
  j:=0;
    for i:=1 to 4 do
    if not c[i] then if d[ord(b[i])-48] then inc(j);
  write(j);
  close(input);
  close(output);
end.