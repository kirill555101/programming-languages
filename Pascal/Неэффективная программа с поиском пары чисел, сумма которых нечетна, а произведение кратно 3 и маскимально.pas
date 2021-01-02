var
  a:array[1..1000] of integer;
  i,j,n,min1,min2:integer;
begin
  min1:=0; min2:=0;
  readln(n);
  for i:=1 to n do
    readln(a[i]);
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if ((a[i]+a[j]) mod 2<>0) and ((a[i]*a[j])>min1*min2) and ((a[i]*a[j]) mod 3=0) then begin
        min1:=a[i]; min2:=a[j];
      end;
  if (min1=0) and (min2=0) then 
    writeln('0')
  else
    writeln(min1,' ', min2);
end.