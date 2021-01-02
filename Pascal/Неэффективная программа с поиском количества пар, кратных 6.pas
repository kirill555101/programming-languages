var
  a:array[1..10000] of integer;
  i,j,k,n:integer;
begin
  readln(n);
  k:=0;
  for i:=1 to n do 
    readln(a[i]);
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if (a[i]*a[j]) mod 6 =0 then
        k:=k+1;
  writeln(k);
end.