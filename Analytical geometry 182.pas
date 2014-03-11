var x1,y1,x2,y2,x3,y3,x4,y4:longint;
    d14,d24,d34,d13,d23,d12:extended;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(x1,y1,x2,y2,x3,y3);
    for x4:=-1000 to 1000 do
      for y4:=-1000 to 1000 do
      begin
        if not ((x4=x1) and (y4=y1))and not ((x4=x2) and (y4=y2))and not ((x4=x3) and (y4=y3)) then
        begin
        d34:=sqrt(sqr(x4-x3)+sqr(y4-y3));
        d24:=sqrt(sqr(x4-x2)+sqr(y4-y2));
        d14:=sqrt(sqr(x4-x1)+sqr(y4-y1));
        d23:=sqrt(sqr(x3-x2)+sqr(y3-y2));
        d13:=sqrt(sqr(x3-x1)+sqr(y3-y1));
        d12:=sqrt(sqr(x2-x1)+sqr(y2-y1));
         if ((abs(sqr(d34)+sqr(d24)-sqr(d14))<=0.00001) and (abs(sqr(d34)+sqr(d24)-sqr(d23))<=0.00001)
          or (abs(sqr(d14)+sqr(d24)-sqr(d34))<=0.00001) and (abs(sqr(d14)+sqr(d24)-sqr(d12))<=0.00001)
          or (abs(sqr(d14)+sqr(d34)-sqr(d24))<=0.00001) and (abs(sqr(d14)+sqr(d34)-sqr(d13))<=0.00001)) and
         ( (abs(d12-d34)<=0.001) and (abs(d13-d24)<=0.001)
          or (abs(d14-d23)<=0.001) and (abs(d12-d34)<=0.001) )
          then
          begin
          write(x4,' ',y4);
          close(input); close(output);
          halt;
          end;
        end;
      end;
end.