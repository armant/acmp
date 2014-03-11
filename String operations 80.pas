var c,l:char;
    p1,p2,p3:boolean;
    a1,a2,a3:array[0..6] of longint;
    n1,n2,n3,i,k:longint;
procedure yes;
begin
  write('YES');
  close(input);
  close(output);
  halt;
end;
procedure no;
begin
  write('NO');
  close(input);
  close(output);
  halt;
end;
procedure error;
begin
  write('ERROR');
  close(input);
  close(output);
  halt;
end;
function num(a:char):boolean;
begin
  if (a<='9') and (a>='0')  then num:=true else num:=false;
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  fillchar(a1,sizeof(a1),0);
  read(c);
  if eoln then error;
    if c='-' then p1:=false
  else
    if num(c) then
    begin
    p1:=true;
    inc(a1[0]);
    a1[1]:=ord(c)-48;
    end
  else
    error;
 
    if not p1 then
    begin
    read(c);
    if eoln then error;
      if num(c) then
      begin
      inc(a1[0]);
      a1[1]:=ord(c)-48;
      end
    else
      error;
    end;
 
    while (not eoln) and num(c) do
    begin
    read(c);
      if num(c) then
      begin
      inc(a1[0]);
      a1[a1[0]]:=ord(c)-48;
      end
    else
      break;
    end;
  if eoln then error;
  if (c='+') or (c='-') or (c='*') or (c='/') then l:=c else error;
  k:=1;
    for i:=2 to a1[0] do
    k:=k*10;
  n1:=0;
    for i:=1 to a1[0] do
    begin
    n1:=n1+a1[i]*k;
    k:=k div 10;
    end;
  if not p1 then n1:=-n1;
  fillchar(a2,sizeof(a2),0);
  read(c);
  if eoln then error;
    if c='-' then p2:=false
  else
    if num(c) then
    begin
    p2:=true;
    inc(a2[0]);
    a2[1]:=ord(c)-48;
    end
  else
    error;
 
    if not p2 then
    begin
    read(c);
    if eoln then error;
      if num(c) then
      begin
      inc(a2[0]);
      a2[1]:=ord(c)-48;
      end
    else
      error;
    end;
 
    while (not eoln) and num(c) do
    begin
    read(c);
      if num(c) then
      begin
      inc(a2[0]);
      a2[a2[0]]:=ord(c)-48;
      end
    else
      break;
    end;
  if eoln then error;
  if (c<>'=') then error;
  k:=1;
    for i:=2 to a2[0] do
    k:=k*10;
  n2:=0;
    for i:=1 to a2[0] do
    begin
    n2:=n2+a2[i]*k;
    k:=k div 10;
    end;
  if not p2 then n2:=-n2;
  fillchar(a3,sizeof(a3),0);
  read(c);
    if c='-' then p3:=false
  else
    if num(c) then
    begin
    p3:=true;
    inc(a3[0]);
    a3[1]:=ord(c)-48;
    end
  else
    error;
 
    if not p3 then
    begin
    if eoln then error;
    read(c);
      if num(c) then
      begin
      inc(a3[0]);
      a3[1]:=ord(c)-48;
      end
    else
      error;
    end;
 
    while (not eoln) and num(c) do
    begin
    read(c);
      if num(c) then
      begin
      inc(a3[0]);
      a3[a3[0]]:=ord(c)-48;
      end
    else
      break;
    end;
  if not num(c) then error;
  k:=1;
    for i:=2 to a3[0] do
    k:=k*10;
  n3:=0;
    for i:=1 to a3[0] do
    begin
    n3:=n3+a3[i]*k;
    k:=k div 10;
    end;
  if not p3 then n3:=-n3;
  if l='+' then begin if n1+n2=n3 then yes else no; end;
  if l='-' then begin if n1-n2=n3 then yes else no; end;
  if l='*' then begin if n1*n2=n3 then yes else no; end;
  if l='/' then begin if n2=0 then no; if (n1 div n2=n3) and (n1 mod n2=0) then yes else no; end;
  close(input); close(output);
end.