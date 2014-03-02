var  f,p,i,s,j:longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(f,p);
  s:=f+f-p;
    for j:=1 to 3 do
    begin
      for i:=s-f+1 to s do
      if i mod p=0 then break;
    s:=i div p*f+s-i;
    end;
  write(s);
  close(input); close(output);
end.