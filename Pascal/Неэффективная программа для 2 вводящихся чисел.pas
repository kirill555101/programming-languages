var
  a:array[1..6,1..2] of integer;
  sum,s,i1,i2,i3,i4,i5,i6:integer;
begin
  sum:=0; s:=0;
  for i1:=1 to 6 do
    readln(a[i1,1],a[i1,2]);
  for i1:=1 to 2 do
  for i2:=1 to 2 do
  for i3:=1 to 2 do
  for i4:=1 to 2 do
  for i5:=1 to 2 do
  for i6:=1 to 2 do begin
    s:=a[1,i1]+a[2,i2]+a[3,i3]+a[4,i4]+a[5,i5]+a[6,i6];
    if (s mod 3<>0) and (s>sum) then sum:=s;
  end;
  writeln(sum);
end.