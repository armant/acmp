var n,i,j,k:longint;
    a,b,c:array[1..30001] of longint;
    bo:boolean;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n do
    read(a[i]);
  j:=0;
  dec(n);
    for i:=1 to n div 2 do
    if n mod i=0 then
    begin
    inc(j);
    b[j]:=i;
    end;
 
    for i:=1 to j do
    begin
      for k:=1 to b[i] do
      c[k]:=a[k];
    bo:=true;
      for k:=b[i]+1 to n do
      if k mod b[i]=0 then
      begin
        if a[k]<>c[b[i]] then
        begin
        bo:=false;
        break;
        end;
      end else
      if a[k]<>c[k mod b[i]] then
      begin
      bo:=false;
      break;
      end;
 
      if bo then
      begin
      write(b[i]);
      close(input); close(output);
      halt;
      end;
    end;
    write(n);
  close(input); close(output);
end.