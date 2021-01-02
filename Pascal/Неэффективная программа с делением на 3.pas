var
  a:array[1..10000] of integer;
  i,j,r,n,y:integer;
begin
  readln(n);
  r:=2001;
  for i:=1 to n do begin
    readln(a[i]);
  end;
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if (a[i]+a[j]<r) and ((a[i]+a[j]) mod 3 = 0) then
      r:=a[j]+a[i];
  if r=2001 then r:=1;
  readln(y);
  writeln('Вычисленное контрольное значение:',r);
  if r=y then 
    writeln('Контроль пройден')
  else
    writeln('Контроль не пройден');
end.

