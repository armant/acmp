var n,i,mas,man,z,c:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
  man:=0;
  mas:=0;
    for  i:=1 to n div 2 do
      if n mod i=0 then
      begin
      z:=i;
      c:=0;
        while z<>0 do
        begin
        c:=c+z mod 10;
        z:=z div 10;
        end;
      if c>mas then begin mas:=c; man:=i; end;
      end;
  z:=n;
  c:=0;
    while z<>0 do
    begin
    c:=c+z mod 10;
    z:=z div 10;
    end;
  if c>mas then begin mas:=c; man:=n; end;
  write(man);
  close(input);
  close(output);
end.