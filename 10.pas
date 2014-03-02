var a,b,c,d,i:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(a,b,c,d);
    for i:=-100 to 100 do
    if a*i*i*i+b*i*i+c*i+d=0 then write(i,' ');
  close(input);
  close(output);
end.