var n,m,i,j,k:longint;
    a,b:array[1..201] of string;
    s:string;
    t:boolean;
    f:array[1..201] of boolean;
function min(a,b:longint):longint;
begin
  if a>b then min:=b else min:=a;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(n);
    for i:=1 to n do
    readln(a[i]);
  readln(m);
    for j:=1 to m do
    readln(b[j]);
 
    for i:=1 to n-1 do
      for j:=i+1 to n do
      begin
      t:=true;
        for k:=1 to min(length(a[i]),length(a[j])) do
        if a[i,k]>a[j,k] then
        begin
        s:=a[i];
        a[i]:=a[j];
        a[j]:=s;
        t:=false;
        break;
        end
      else
        if a[i,k]<a[j,k] then begin t:=false; break; end;
 
        if (t) and (length(a[i])>length(a[j])) then
        begin
        s:=a[i];
        a[i]:=a[j];
        a[j]:=s;
        end;
      end;
    for i:=1 to m-1 do
      for j:=i+1 to m do
      begin
      t:=true;
        for k:=1 to min(length(b[i]),length(b[j])) do
        if b[i,k]>b[j,k] then
        begin
        s:=b[i];
        b[i]:=b[j];
        b[j]:=s;
        t:=false;
        break;
        end
      else
        if b[i,k]<b[j,k] then begin t:=false; break; end;
 
        if (t) and (length(b[i])>length(b[j])) then
        begin
        s:=b[i];
        b[i]:=b[j];
        b[j]:=s;
        end;
      end;
  write('Friends: ');
    for i:=1 to n do
    if i<n then write(a[i],', ') else write(a[i]);
  writeln;
  write('Mutual Friends: ');
  t:=true;
  fillchar(f,sizeof(f),false);
    for i:=1 to n do
      for j:=1 to m do
        if a[i]=b[j] then
        begin
        f[j]:=true;
        if t then begin t:=false; write(a[i]); end else write(', ',a[i]);
        end;
  writeln;
  write('Also Friend of: ');
  t:=true;
    for j:=1 to m do
      if not f[j] then
      begin
      if t then begin t:=false; write(b[j]); end else write(', ',b[j]);
      end;
  close(input);
  close(output);
end.