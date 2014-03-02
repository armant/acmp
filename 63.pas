var s,m,i,j:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(s,m);
    for i:=1 to 1000 do
      for j:=i to 1000 do
      if (i+j=s) and (i*j=m) then
      begin
      write(i,' ',j);
      close(input);
      close(output);
      halt;
      end;
end.