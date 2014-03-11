var a:array[0..1439] of longint;
    n,i,j,f,t,max:longint;
    c1,c2:char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(n);
  fillchar(a,sizeof(a),0);
    for i:=1 to n do
    begin
    read(c1,c2);
    f:=((ord(c1)-48)*10+ord(c2)-48)*60;
    read(c1,c1,c2);
    f:=f+(ord(c1)-48)*10+ord(c2)-48;
    read(c1,c1,c2);
    t:=((ord(c1)-48)*10+ord(c2)-48)*60;
    read(c1,c1,c2);
    t:=t+(ord(c1)-48)*10+ord(c2)-48;
    readln;
    for j:=f to t do
      inc(a[j]);
    end;
  max:=0;
    for i:=1 to 1439 do
    if a[i]>max then max:=a[i];
  write(max);
  close(input); close(output);
end.