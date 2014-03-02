var x, y :int64;
    i, j, k :longint;
    a :array[0..21] of int64;
begin
  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
  read(x, y);
 
    for i:= 1 to 35000 do
      for j:= 1 to i do
        begin
          a[1]:= i;
          a[2]:= j;
 
            for k:= 3 to x do
              a[k]:= a[k - 1] + a[k - 2];
 
          if a[x] = y then
            begin
              write(i, ' ', j);
              close(input);
              close(output);
              halt;
            end;
 
        end;
 
end.