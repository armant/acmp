var a,b,c,d:longint;
function max(a,b:longint):longint;
begin
if a>=b then max:=a else max:=b;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(a,b);
  c:=a;
  d:=b;
    while (a<>0) and (b<>0) do
    if a>=b then a:=a mod b else
    if a<b  then b:=b mod a;
  write(c*d div max(a,b));
  close(input);
  close(output);
end.