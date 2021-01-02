var
  a:array[1..5,1..3] of integer;
  i1,i2,i3,i4,i5,s,sum:integer;
begin
  for i1:=1 to 5 do
    readln(a[i1,1],a[i1,2],a[i1,3]);
  sum:=50001;
  for i1:=1 to 3 do
    for i2:=1 to 3 do
      for i3:=1 to 3 do
        for i4:=1 to 3 do
          for i5:=1 to 3 do begin
            s:=sqr(a[1,i1])+sqr(a[2,i2])+sqr(a[3,i3])+sqr(a[4,i4])+sqr(a[5,i5]);
            if (s<sum) and (s mod 2 = 0) then sum:=s;
          end;
  if sum=50001 then sum:=0;
  writeln(sum);
end.
  
