var n,i,c:longint;
    ch:char;
    a:array[1..5002] of char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  n:=0;
    while not eoln do
    begin
    read(ch);
    inc(n);
    a[n]:=ch;
    end;
  c:=0;
    for i:=n downto 1 do
    begin
    if a[i]='0' then inc(c) else break;
    end;
  write(1);
    for i:=1 to c do
    write(0);
  close(input);
  close(output);
end.