var ch:char;
    x1,y1,x2,y2:longint;
procedure error;
begin
write('ERROR');
close(input);
close(output);
halt;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(ch);
  if (ord(ch)>=65) and (ord(ch)<=72) then x1:=ord(ch)-64 else error;
  read(ch);
  if (ord(ch)>=49) and (ord(ch)<=56) then y1:=ord(ch)-48 else error;
  read(ch);
  if ch<>'-' then error;
  read(ch);
  if (ord(ch)>=65) and (ord(ch)<=72) then x2:=ord(ch)-64 else error;
  read(ch);
  if (ord(ch)>=49) and (ord(ch)<=56) then y2:=ord(ch)-48 else error;
  if (abs(x1-x2)=2) and (abs(y1-y2)=1)
  or (abs(x1-x2)=1) and (abs(y1-y2)=2) then write('YES') else write('NO');
  close(input);
  close(output);
end.