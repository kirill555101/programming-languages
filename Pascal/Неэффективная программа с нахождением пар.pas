var
a:array[1..1000] of integer;
i,n,j,k:integer;
begin
  readln(n);
  k:=0;
  for i:=1 to n do begin
    readln(a[i]);
  end;
  for i:= 1 to n-5 do
    for j:= i+5 to n do
      if a[i]*a[j] mod 13 = 0 
        then
        k:=k+1;
  writeln(k);
end.
