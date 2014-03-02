var a:array[-1..300] of string;
    b:array[-1..300] of longint;
    n,i,j,k,c:longint;
    f:boolean;
procedure QS(l,r:longint);
var i,j,x,y:longint;
    s:string;
begin
  i:=l;
  j:=r;
  x:=b[random(j-i)+i];
    repeat
      while b[i]<x do inc(i);
 
      while b[j]>x do dec(j);
 
      if i<=j then
      begin
      y:=b[i];
      b[i]:=b[j];
      b[j]:=y;
      s:=a[i];
      a[i]:=a[j];
      a[j]:=s;
      inc(i);
      dec(j);
      end;
    until i>j;
  if l<j then QS(l,j);
  if i<r then QS(i,r);
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(a[1]);
  n:=1;
  b[1]:=length(a[1]);
    while a[n]<>'ENDOFINPUT' do
    begin
    inc(n);
    readln(a[n]);
    b[n]:=length(a[n]);
    end;
  dec(n);
  QS(1,n);
  c:=0;
    for i:=n downto 1 do
    begin
    f:=false;
      for j:=1 to n do
      begin
      if b[j]>=b[i] then break;
        for k:=1 to n do
        begin
          if (b[k]+b[j]=b[i]) and ((a[k]+a[j]=a[i]) or (a[j]+a[k]=a[i])) then
          begin
          inc(c);
          f:=true;
          break;
          end;
 
          if b[k]+b[j]>b[i] then break;
        end;
      if f then break;
      end;
    end;
  write(c);
  close(input); close(output);
end.