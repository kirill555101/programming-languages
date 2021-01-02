var
  a:array[1..7] of integer;
  i,n,k1,k2,k,j:integer;
begin
  readln(n);
  for i:=1 to 6 do
    readln(a[i]);
  for i:=7 to n do begin
    readln(a[7]);
    if a[1] mod 2 = 0 then
      k2:=k2+1
    else
      k1:=k1+1;
    if a[7] mod 2 = 0 then
      k:=k+k2
    else
      k:=k+k1;
    for j:=1 to 6 do
      a[j]:=a[j+1];
  end;
  writeln(k);
end.