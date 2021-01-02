var 
  i,n,r,y,m1,m2,m3a,m3b,a:integer;
begin
  readln(n);
  r:=2001; m1:=1001; m2:=1001; m3a:=1001; m3b:=1001;
  for i:=1 to n do begin
    readln(a);
    if (a < m1) and (a mod 3 = 1) then
      m1:=a;
    if (a < m2) and (a mod 3 = 2) then
      m2:=a;
    if (a < m3a) and (a mod 3 = 0) then
      m3a:=a;
    if (a < m3b) and (a mod 3 = 0) then
      m3b:=a;
  end;
  if (m1+m2<r) and (m1<1001) and (m2<1001) then
    r:=m1+m2;
  if (m3a+m3b<r) and (m3a<1001) and (m3b<1001) then
    r:=m3a+m3b;
  if r=2001 then r:=1;
  readln(y);
  writeln('Вычисленное контрольное значение:',r);
  if r=y then 
    writeln('Контроль пройден')
  else
    writeln('Контроль не пройден');
end.