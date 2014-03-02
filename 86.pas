var n:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  write((n-1)*(n-2));
  close(input); close(output);
end.