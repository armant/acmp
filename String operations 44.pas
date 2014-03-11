var c,n,i:longint;
    a:array[0..252] of char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  n:=0;
  fillchar(a,sizeof(a),'0');
    while not eoln do
    begin
    inc(n);
    read(a[n]);
    end;
  c:=0;
    for i:=2 to n-2 do
    if (a[i]='-') and (a[i+1]='-')
    and (((a[i-1]='>') and (a[i-2]='>') and (a[i+2]='>'))
    or   ((a[i-1]='<') and (a[i+2]='<') and (a[i+3]='<'))) then inc(c);
  write(c);
  close(input);
  close(output);
end.