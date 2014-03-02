var n,k,c,i:longint;
    ch:char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  k:=-1;
    while not eoln do
    begin
    read(ch);
    inc(k);
    end;
  c:=1;
    for i:=1 to n do
    if i mod k=n mod k then c:=c*i;
  write(c);
  close(input);
  close(output);
end.