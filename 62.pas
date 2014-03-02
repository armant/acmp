var ch:char;
    a:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(ch,a);
  if odd(ord(ch)+a) then write('WHITE') else write('BLACK');
  close(input);
  close(output);
end.