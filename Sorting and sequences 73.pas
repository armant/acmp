var ch:char;
    n,i,j:longint;
    a:array[0..27] of char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
    for i:=1 to 26 do
    a[i]:=chr(i+96);
  a[27]:=' ';
  i:=0;
    while not eoln do
    begin
    inc(i);
    read(ch);
    if (ch>='0') and (ch<='9') then n:=ord(ch)-48 else n:=ord(ch)-55;
      for j:=1 to 27 do
      if (i+j) mod 27=n then
      begin
      write(a[j]);
      break;
      end;
    end;
  close(input);
  close(output);
end.