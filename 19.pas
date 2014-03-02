var a:array[-2..11,-2..11] of longint;
    ch:char;
    fx,fy,lx,ly,kx,ky,dx,dy,i:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  fillchar(a,sizeof(a),0);
  read(ch);
  fx:=ord(ch)-64;
  read(fy);
  a[fx,fy]:=1;
  read(ch);
  read(ch);
  lx:=ord(ch)-64;
  read(ly);
  a[lx,ly]:=1;
  read(ch);
  read(ch);
  kx:=ord(ch)-64;
  read(ky);
  a[kx,ky]:=1;
    for i:=1 to 8 do
    if a[lx,i]<>1 then a[lx,i]:=2;
 
    for i:=1 to 8 do
    if a[i,ly]<>1 then a[i,ly]:=2;
  if a[kx-1,ky-2]<>1 then a[kx-1,ky-2]:=2;
  if a[kx+1,ky-2]<>1 then a[kx+1,ky-2]:=2;
  if a[kx+2,ky-1]<>1 then a[kx+2,ky-1]:=2;
  if a[kx+2,ky+1]<>1 then a[kx+2,ky+1]:=2;
  if a[kx+1,ky+2]<>1 then a[kx+1,ky+2]:=2;
  if a[kx-1,ky+2]<>1 then a[kx-1,ky+2]:=2;
  if a[kx-2,ky+1]<>1 then a[kx-2,ky+1]:=2;
  if a[kx-2,ky-1]<>1 then a[kx-2,ky-1]:=2;
    for i:=1 to 8 do
    if a[fx,i]<>1 then a[fx,i]:=2;
 
    for i:=1 to 8 do
    if a[i,fy]<>1 then a[i,fy]:=2;
  dx:=fx;
  dy:=fy;
    while (dx>1) and (dy>1) do
    begin
    dec(dx);
    dec(dy);
    if a[dx,dy]<>1 then a[dx,dy]:=2;
    end;
  dx:=fx;
  dy:=fy;
    while (dx>1) and (dy<8) do
    begin
    dec(dx);
    inc(dy);
    if a[dx,dy]<>1 then a[dx,dy]:=2;
    end;
  dx:=fx;
  dy:=fy;
    while (dx<8) and (dy>1) do
    begin
    inc(dx);
    dec(dy);
    if a[dx,dy]<>1 then a[dx,dy]:=2;
    end;
  dx:=fx;
  dy:=fy;
    while (dx<8) and (dy<8) do
    begin
    inc(dx);
    inc(dy);
    if a[dx,dy]<>1 then a[dx,dy]:=2;
    end;
  i:=0;
    for dx:=1 to 8 do
      for dy:=1 to 8 do
      if a[dx,dy]=2 then inc(i);
  write(i);
  close(input);
  close(output);
end.