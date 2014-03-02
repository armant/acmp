var n,min,max,m,i:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  read(m);
  min:=m;
  max:=m;
    for i:=2 to n do
    begin
    read(m);
    if m>max then max:=m;
    if m<min then min:=m;
    end;
  write(min,' ',max);
  close(input); close(output);
end.