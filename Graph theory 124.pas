var n,m,i,j:longint;
    a:array[1..101] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(n,m);
  fillchar(a,sizeof(a),0);
    for i:=1 to m do
    begin
    read(j);
    inc(a[j]);
    read(j);
    inc(a[j]);
    end;
 
    for i:=1 to n do
    write(a[i],' ');
  close(input); close(output);
end.