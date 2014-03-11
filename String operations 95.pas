var c:char;
    n,k,m:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(c);
  if eoln then begin write(c,' ',0); close(input); close(output); halt; end;
  n:=ord(c)-48;
    while not eoln do
    begin
    read(c);
    n:=n+ord(c)-48;
    end;
  k:=1;
  if n<10 then begin write(n,' ',k); close(input); close(output); halt; end;
    repeat
    m:=0;
      while n>0 do
      begin
      m:=m+n mod 10;
      n:=n div 10;
      end;
    inc(k);
    n:=m;
    until m<10;
  write(m,' ',k);
  close(input); close(output);
end.