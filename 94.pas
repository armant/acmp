var n,m,k,c:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m,k);
    if (k>=n) and (m>n) then
    begin
    write('NO');
    close(input);
    close(output);
    halt;
    end;
  c:=0;
    while m>0 do
    begin
    m:=m-n;
    inc(c);
    if m<1 then begin write(c); close(input); close(output); halt; end;
    m:=m+k;
    end;
end.