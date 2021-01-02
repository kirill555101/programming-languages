var
  a:array[1..1000] of integer;
  i,j,n,k:integer;
begin
  readln(n);
  k:=0;
  for i:=1 to n do
    readln(a[i]);
  for i:=1 to n-5 do
    for j:=i+5 to n do
      if (a[i]*a[j]) mod 101<>0 then
        k:=k+1;
  writeln(k);
end.