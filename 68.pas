var s:string;
    n,i:longint;
    b:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(s);
  read(n);
  if s='Home' then b:=true else b:=false;
    for i:=1 to n do
    if b then b:=false else b:=true;
  if b then
  begin
  write('Yes');
  close(input);
  close(output);
  halt;
  end;
 
    for i:=1 to n do
    if b then b:=false else b:=true;
  if b then
  begin
  write('Yes');
  close(input);
  close(output);
  halt;
  end;
  write('No');
  close(input); close(output);
end.