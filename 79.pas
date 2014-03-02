var a, b, r :int64;
begin
  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
  read(a, b);
  r:= 1;
 
    while b > 0 do
      begin
 
        if odd(b) then
          begin
            r:= r*a mod 10;
            dec(b);
          end
 
        else
 
          begin
            a:=a*a mod 10;
            b:= b div 2;
          end;
 
      end;
 
  write(r);
  close(output);
end.