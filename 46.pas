var n,i:longint;
    a:array[0..25] of char;
begin
assign(input,'input.txt'); reset(input);
assign(output,'output.txt'); rewrite(output);
a[0]:='2';
a[1]:='7';
a[2]:='1';
a[3]:='8';
a[4]:='2';
a[5]:='8';
a[6]:='1';
a[7]:='8';
a[8]:='2';
a[9]:='8';
a[10]:='4';
a[11]:='5';
a[12]:='9';
a[13]:='0';
a[14]:='4';
a[15]:='5';
a[16]:='2';
a[17]:='3';
a[18]:='5';
a[19]:='3';
a[20]:='6';
a[21]:='0';
a[22]:='2';
a[23]:='8';
a[24]:='7';
a[25]:='5';
read(n);
if n=0 then write(3)
else
if n=25 then
begin
write('2.');
for i:=1 to 25 do
write(a[i]);
end else
begin
write(2,'.');
for i:=1 to n-1 do
write(a[i]);
if ord(a[n+1])-48>=5 then write(ord(a[n])-48+1) else write(a[n]);
end;
close(input);
close(output);
end.