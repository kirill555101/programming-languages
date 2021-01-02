var
a:array[1..6] of integer;
i,n,k13,k1,k,j:integer;
begin
  readln(n);
  k:=0; k13:=0; k1:=0;
  for i:=1 to 5 do
    readln(a[i]);
  for i:=6 to n do begin
    readln(a[6]);
    if a[1] mod 13 = 0 then
      k13:=k13+1;
    k1:=k1+1;
    if a[6] mod 13 = 0 then
      k:=k+k1
    else
      k:=k+k13;
    for j:=1 to 5 do
      a[j]:=a[j+1];
  end;
  writeln(k);
end.
