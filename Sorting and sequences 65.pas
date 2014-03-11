var a:array[0..1000000] of longint;
    b:array[1..1000000] of longint;
    n,i,j,min:longint;
    ch:char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  fillchar(a,sizeof(a),0);
    while not eoln do
    begin
    read(ch);
    inc(a[0]);
    a[a[0]]:=ord(ch)-48;
    end;
  readln;
  readln(n);
  min:=1000000000;
  fillchar(b,sizeof(b),0);
    for i:=1 to n do
    begin
      for j:=1 to a[0] do
      begin
      read(ch);
      if ord(ch)-48<>a[j] then inc(b[i]);
      end;
    if min>b[i] then min:=b[i];
    readln;
    end;
  j:=0;
    for i:=1 to n do
    if b[i]=min then inc(j);
  writeln(j);
    for i:=1 to n do
    if b[i]=min then write(i,' ');
  close(input); close(output);
end.