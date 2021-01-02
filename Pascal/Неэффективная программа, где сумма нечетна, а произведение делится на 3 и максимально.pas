var
  a:array[1..1000] of integer;
  i,j,x,y,n:integer;
begin
  readln(n);
  for i:=1 to n do
    readln(a[i]);
  x:=0; y:=0;
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if ((a[i]+a[j]) mod 2<>0) and ((a[i]*a[j]) mod 3=0) and (a[i]*a[j]>x*y) then 
        begin
          x:=a[i];
          y:=a[j];
        end;
  if (x<>0) and (y<>0) then 
    begin
    if x>y then
      writeln(y,' ',x)
    else
      writeln(x,' ',y)
    end
  else
    writeln(0);
end.