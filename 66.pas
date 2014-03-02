var c:char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(c);
  if c='q' then write('w') else
  if c='w' then write('e') else
  if c='e' then write('r') else
  if c='r' then write('t') else
  if c='t' then write('y') else
  if c='y' then write('u') else
  if c='u' then write('i') else
  if c='i' then write('o') else
  if c='o' then write('p') else
  if c='p' then write('a') else
  if c='a' then write('s') else
  if c='s' then write('d') else
  if c='d' then write('f') else
  if c='f' then write('g') else
  if c='g' then write('h') else
  if c='h' then write('j') else
  if c='j' then write('k') else
  if c='k' then write('l') else
  if c='l' then write('z') else
  if c='z' then write('x') else
  if c='x' then write('c') else
  if c='c' then write('v') else
  if c='v' then write('b') else
  if c='b' then write('n') else
  if c='n' then write('m') else
  if c='m' then write('q');
  close(input);
  close(output);
end.