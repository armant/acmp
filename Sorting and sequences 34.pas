var n,k,i,j,l,d:longint;
    a:array[1..1000001] of longint;
    b:array[0..1000001] of boolean;
    c:char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(n,k);
    for i:=1 to n do
    begin
    read(c);
    a[i]:=ord(c)-48;
    end;
  fillchar(b,sizeof(b),false);
    for i:=n downto k do
    begin
    l:=0;
    d:=1;
      for j:=i downto i-k+1 do
      begin
      l:=l+d*a[j];
      d:=d*10;
      end;
      if b[l] then
      begin
      write('YES');
      close(input); close(output);
      halt;
      end else b[l]:=true;
    end;
  write('NO');
  close(input); close(output);
end.