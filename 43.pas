var max,c:longint;
    ch:char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  max:=0;
  c:=0;
  while not eoln do
  begin
  read(ch);
    if ch='0' then inc(c) else
    begin
    if max<c then max:=c;
    c:=0;
    end;
  end;
  if max<c then max:=c;
  write(max);
  close(input);
  close(output);
end.