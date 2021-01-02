var
  a:array[1..10000] of integer;
  i,j,n,min:integer;
begin
  readln(n);
  min:=1000001;
  for i:=1 to n do
    readln(a[i]);
  for i:=1 to n-6 do
    for j:=i+6 to n do
      if (a[i]*a[j]<min) and ((a[i]*a[j])mod 2=0) then
        min:=a[i]*a[j];
  if min=1000001 then min:=-1;
  writeln(min);
end.