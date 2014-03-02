var n:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  write(n,9,9-n);
  close(input);
  close(output);
end.