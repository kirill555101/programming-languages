var
  a:array[1..1000] of integer;
  i,j,n,k:integer;
begin
  readln(n);
  k:=0;
  for i:=1 to n do
    readln(a[i]);
  for i:=1 to n-4 do
    for j:=i+4 to n do
      if (a[i]*a[j]) mod 10 = 1 then
        k:=k+1;
  writeln(k);
end.