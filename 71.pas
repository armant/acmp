var
 c:array[0..19] of longint;
 i,n,min,s1,s2:longint;
 
procedure differ(i1:integer);
 begin
  if i1>n then
   begin
    if min>abs(s1-s2) then min:=abs(s1-s2);
    exit;
   end;
  s1:=s1+c[i1];
  differ(i1+1);
  s1:=s1-c[i1];
  s2:=s2+c[i1];
  differ(i1+1);
  s2:=s2-c[i1];
 end;
begin
assign(input,'input.txt');
assign(output,'output.txt');
reset(input);rewrite(output);
readln(n);
for i:=1 to n do read(c[i]);
i:=1; s1:=0; s2:=0;
min:=maxlongint;
differ(i);
write(min);
close(input);close(output);
end.