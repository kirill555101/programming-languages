var
  a:array[1..10000] of integer;
  i,j,n:integer;
  sum:real;
begin
  readln(n);
  sum:=1001;
  for i:=1 to n do
    readln(a[i]);
  for i:=1 to n-9 do
    for j:=i+9 to n do
      if (a[i]+a[j])/2<sum then
        sum:=(a[i]+a[j])/2;
  writeln(sum);
end.