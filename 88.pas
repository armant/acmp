var i,j,k,l,m,n,o:longint;
    a:array[1..101,1..101] of longint;
    b:array[1..101] of boolean;
function inn(a:longint):boolean;
begin
  if (a>n*n) or (a<1) then inn:=false else inn:=true;
end;
procedure ic;
begin
  write('Incorrect');
  close(input); close(output);
  halt;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n);
    for i:=1 to n*n do
    begin
    fillchar(b,sizeof(b),false);
      for j:=1 to n*n do
      begin
      read(a[i,j]);
      if not inn(a[i,j]) or b[a[i,j]] then ic else b[a[i,j]]:=true;
      end;
    end;
 
    for j:=1 to n*n do
    begin
    fillchar(b,sizeof(b),false);
      for i:=1 to n*n do
      if not inn(a[i,j]) or b[a[i,j]] then ic else b[a[i,j]]:=true;
    end;
  m:=1;
  o:=1;
    for k:=1 to n do
    begin
      for l:=1 to n do
      begin
      fillchar(b,sizeof(b),false);
        for i:=m to n do
          for j:=o to n do
          if not inn(a[i,j]) or b[a[i,j]] then ic else b[a[i,j]]:=true;
      o:=o+n;
      end;
    m:=m+n;
    end;
  write('Correct');
  close(input); close(output);
end.