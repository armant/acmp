var a:array[1..1001] of char;
    n,p,i,j,c:longint;
function min(a,b:longint):longint;
begin
if a>b then min:=b else min:=a;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  n:=0;
    while not eoln do
    begin
    inc(n);
    read(a[n]);
    end;
  read(p);
    if p>0 then
    begin
    c:=0;
      for j:=1 to p do
      begin
        for i:=1 to n do
        begin
        write(a[i]);
        inc(c);
        if c=1023 then break;
        end;
      if c=1023 then break;
      end;
    close(input);
    close(output);
    halt;
    end;
 
    if n mod p<>0 then
    begin
    write('NO SOLUTION');
    close(input);
    close(output);
    halt;
    end;
  p:=abs(p);
    for i:=1 to n-n div p do
      if a[i]<>a[i+n div p] then
      begin
      write('NO SOLUTION');
      close(input);
      close(output);
      halt;
      end;
 
    for i:=1 to min(n div p,1023) do
    write(a[i]);
  close(input);
  close(output);
end.