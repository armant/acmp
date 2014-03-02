var n,i,j,k,c:longint;
    s1,s2:array[1..10] of char;
begin
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  n:=0;
    while not eoln do
    begin
    inc(n);
    read(s1[n]);
    end;
  readln;
  n:=0;
    while not eoln do
    begin
    inc(n);
    read(s2[n]);
    end;
  c:=1;
    for i:=1 to n do
    begin
    k:=0;
      for j:=0 to 9 do
      if (j=0) and
      ((s1[i]='?') or (s1[i]='0') or (s1[i]='a')) and
      ((s2[i]='?') or (s2[i]='0') or (s2[i]='a')) then inc(k) else
      if (j=1) and
      ((s1[i]='?') or (s1[i]='1') or (s1[i]='a') or (s1[i]='b')) and
      ((s2[i]='?') or (s2[i]='1') or (s2[i]='a') or (s2[i]='b')) then inc(k) else
      if (j=2) and
      ((s1[i]='?') or (s1[i]='2') or ((s1[i]>='a') and (s1[i]<='c'))) and
      ((s2[i]='?') or (s2[i]='2') or ((s2[i]>='a') and (s2[i]<='c'))) then inc(k) else
      if (j=3) and
      ((s1[i]='?') or (s1[i]='3') or ((s1[i]>='a') and (s1[i]<='d'))) and
      ((s2[i]='?') or (s2[i]='3') or ((s2[i]>='a') and (s2[i]<='d'))) then inc(k) else
      if (j=4) and
      ((s1[i]='?') or (s1[i]='4') or ((s1[i]>='b') and (s1[i]<='e'))) and
      ((s2[i]='?') or (s2[i]='4') or ((s2[i]>='b') and (s2[i]<='e'))) then inc(k) else
      if (j=5) and
      ((s1[i]='?') or (s1[i]='5') or ((s1[i]>='c') and (s1[i]<='f'))) and
      ((s2[i]='?') or (s2[i]='5') or ((s2[i]>='c') and (s2[i]<='f'))) then inc(k) else
      if (j=6) and
      ((s1[i]='?') or (s1[i]='6') or ((s1[i]>='d') and (s1[i]<='g'))) and
      ((s2[i]='?') or (s2[i]='6') or ((s2[i]>='d') and (s2[i]<='g'))) then inc(k) else
      if (j=7) and
      ((s1[i]='?') or (s1[i]='7') or ((s1[i]>='e') and (s1[i]<='g'))) and
      ((s2[i]='?') or (s2[i]='7') or ((s2[i]>='e') and (s2[i]<='g'))) then inc(k) else
      if (j=8) and
      ((s1[i]='?') or (s1[i]='8') or (s1[i]='f') or (s1[i]='g')) and
      ((s2[i]='?') or (s2[i]='8') or (s2[i]='f') or (s2[i]='g')) then inc(k) else
      if (j=9) and
      ((s1[i]='?') or (s1[i]='9') or (s1[i]='g')) and
      ((s2[i]='?') or (s2[i]='9') or (s2[i]='g')) then inc(k);
    c:=c*k;
    end;
  write(c);
  close(input);
  close(output);
end.