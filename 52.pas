var i,s1,s2:longint;
    ch:char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  s1:=0;
  s2:=0;
    for i:=1 to 3 do
    begin
    read(ch);
    s1:=s1+ord(ch)-48;
    end;
 
    for i:=1 to 3 do
    begin
    read(ch);
    s2:=s2+ord(ch)-48;
    end;
  if s1=s2 then write('YES') else write('NO');
  close(input);
  close(output);
end.