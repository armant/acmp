var a,b,ac,bc,i,j,k:longint;
    ap,bp:boolean;
    a1,b1:array[0..11] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(a,b);
  if a<0 then ap:=false else ap:=true;
  a:=abs(a);
  ac:=1;
  fillchar(a1,sizeof(a1),0);
    while a<>0 do
    begin
    a1[ac]:=a mod 10;
    a:=a div 10;
    inc(ac);
    end;
  dec(ac);
  if b<0 then bp:=false else bp:=true;
  b:=abs(b);
  bc:=1;
  fillchar(b1,sizeof(b1),0);
    while b<>0 do
    begin
    b1[bc]:=b mod 10;
    b:=b div 10;
    inc(bc);
    end;
  dec(bc);
  for a:=1 to ac-1 do
      for b:=a+1 to ac do
      if (ap) and (a1[a]>a1[b]) then
      begin
      i:=a1[a];
      a1[a]:=a1[b];
      a1[b]:=i;
      end
    else
      if not ap then
      begin
        if a1[ac]=0 then
        begin
        a1[ac]:=a1[ac-1];
        a1[ac-1]:=0;
        end;
        if b<>ac then
        begin
          if a1[a]<a1[b] then
          begin
          i:=a1[a];
          a1[a]:=a1[b];
          a1[b]:=i;
          end;
        end
      else
        begin
          if (a1[a]<a1[b]) and (a1[a]<>0) then
          begin
          i:=a1[a];
          a1[a]:=a1[b];
          a1[b]:=i;
          end;
        end;
      end;
  for a:=1 to bc-1 do
      for b:=a+1 to bc do
      if bp then
      begin
        if (b<>bc) and (b1[a]<b1[b]) then
        begin
        i:=b1[a];
        b1[a]:=b1[b];
        b1[b]:=i;
        end
      else
        if (b=bc) and (b1[a]<b1[b]) and (b1[a]<>0) then
        begin
        i:=b1[a];
        b1[a]:=b1[b];
        b1[b]:=i;
        end;
      end
    else
      if (not bp) and (b1[a]>b1[b]) then
      begin
      i:=b1[a];
      b1[a]:=b1[b];
      b1[b]:=i;
      end;
  a:=0;
    for i:=ac downto 1 do
    begin
    k:=1;
      for j:=1 to i do
      begin
      k:=k*10;
      end;
    k:=k div 10;
    a:=a+a1[i]*k;
    end;
  if not ap then a:=a-a*2;
  b:=0;
    for i:=bc downto 1 do
    begin
    k:=1;
      for j:=1 to i do
      begin
      k:=k*10;
      end;
    k:=k div 10;
    b:=b+b1[i]*k;
    end;
  if not bp then b:=b-b*2;
  write(a-b);
  close(input);
  close(output);
end.