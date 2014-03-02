var n:int64;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  if n=5 then write(25) else
    begin
    n:=n div 10;
    write(n*(n+1),25);
    end;
  close(input);
  close(output);
end.