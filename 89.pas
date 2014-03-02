var n,i,t1,t2,td:longint;
    s,f:string;
procedure dell;
begin
  delete(s,length(s),1);
end;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(n);
  td:=2000;
    for i:=1 to n do
    begin
    readln(s);
      while not ((s[length(s)]>='0') and (s[length(s)]<='9')) do delete(s,length(s),1);
    t2:=0;
    t2:=t2+ord(s[length(s)])-48;
    dell;
    t2:=t2+(ord(s[length(s)])-48)*10;
    dell;
    dell;
    t2:=t2+(ord(s[length(s)])-48)*60;
    dell;
    t2:=t2+(ord(s[length(s)])-48)*600;
    dell;
    dell;
    t1:=0;
    t1:=t1+ord(s[length(s)])-48;
    dell;
    t1:=t1+(ord(s[length(s)])-48)*10;
    dell;
    dell;
    t1:=t1+(ord(s[length(s)])-48)*60;
    dell;
    t1:=t1+(ord(s[length(s)])-48)*600;
    dell;
    dell;
    if t2<=t1 then t2:=t2+1440;
      if t2-t1<td then
      begin
      td:=t2-t1;
      f:=s;
      end;
    end;
  writeln('The fastest train is ',f,'.');
  write('It''s speed is ',round(650*60/td),' km/h, approximately.');
  close(input); close(output);
end.