var n,i,d:longint;
    a:array[-101..101] of longint;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  fillchar(a,sizeof(a),0);
  read(n);
    for i:=1 to n do
    begin
    read(d);
    inc(a[d]);
    end;
 
    for i:=-100 to 100 do
    begin
      for d:=1 to a[i] do
      write(i,' ');
    end;
  close(input);
  close(output);
end.