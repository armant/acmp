var n,i:longint;
    c:int64;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  if n=1 then
  begin
  write(1);
  close(input);
  close(output);
  halt;
  end;
  c:=1;
    for i:=1 to n div 3 do c:=c*3;
  if n mod 3=2 then c:=c*2 else
  if n mod 3=1 then c:=c div 3*4;
  write(c);
  close(input);
  close(output);
end.