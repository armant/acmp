var hs,ms,ss,hf,mf,sf,h,m,s,m1,m2,s1,s2:longint;
    c:char;
    a:array[-1..10] of int64;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  hs:=0;
  read(c);
  hs:=hs+(ord(c)-48)*10;
  read(c);
  hs:=hs+ord(c)-48;
  read(c);
  ms:=0;
  read(c);
  ms:=ms+(ord(c)-48)*10;
  read(c);
  ms:=ms+ord(c)-48;
  read(c);
  ss:=0;
  read(c);
  ss:=ss+(ord(c)-48)*10;
  read(c);
  ss:=ss+ord(c)-48;
  read(c);
  read(c);
  hf:=0;
  read(c);
  hf:=hf+(ord(c)-48)*10;
  read(c);
  hf:=hf+ord(c)-48;
  read(c);
  mf:=0;
  read(c);
  mf:=mf+(ord(c)-48)*10;
  read(c);
  mf:=mf+ord(c)-48;
  read(c);
  sf:=0;
  read(c);
  sf:=sf+(ord(c)-48)*10;
  read(c);
  sf:=sf+ord(c)-48;
  fillchar(a,sizeof(a),0);
    for h:=hs to hf do
    begin
    if h=hs then m1:=ms else m1:=0;
    if h=hf then m2:=mf else m2:=59;
      for m:=m1 to m2 do
      begin
      if (h=hs) and (m1=ms) and (m=m1) then s1:=ss else s1:=0;
      if (h=hf) and (m2=mf) and (m=m2) then s2:=sf else s2:=59;
        for s:=s1 to s2 do
        begin
        inc(a[h div 10]);
        inc(a[h mod 10]);
        inc(a[m div 10]);
        inc(a[m mod 10]);
        inc(a[s div 10]);
        inc(a[s mod 10]);
        end;
      end;
    end;
 
    for h:=0 to 9 do
    writeln(a[h]);
  close(input); close(output);
end.