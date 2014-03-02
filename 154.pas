var n, j :longint;
    a :array[0..9] of longint;
    sum :int64;
 
procedure find(c, max :longint);
 
var i :longint;
 
begin
  if c > 8 then exit;
 
    for i:= max downto 1 do
      begin
        a[c]:= i;
        sum:= sum + i*i*i;
 
        if sum > n then
          begin
            sum:= sum - i*i*i;
            continue;
          end;
 
        if sum = n then
          begin
 
              for j:= 1 to c do
                write(a[j], ' ');
 
            close(output);
            halt;
          end;
 
        find(c + 1, i);
        sum:= sum - i*i*i;
      end;
 
end;
 
begin
  assign(input, 'input.txt'); reset(input);
  assign(output, 'output.txt'); rewrite(output);
  read(n);
  sum:= 0;
  find(1, 1275);
  write('IMPOSSIBLE');
  close(output);
end.