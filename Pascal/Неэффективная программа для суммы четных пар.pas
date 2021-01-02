var
  a:array[1..1000] of integer;
  i,n,j,k:integer;
begin
  readln(n);
  k:=0;
  for i:=1 to n do begin
    readln(a[i]);
  end;
  for i:=1 to n-6 do
    for j:=i+6 to n do
      if (a[j]+a[i]) mod 2 = 0 then 
      k:=k+1;
  writeln(k);
end.