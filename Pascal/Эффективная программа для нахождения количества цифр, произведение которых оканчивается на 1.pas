var
  a:array[1..5] of integer;
  i,j,n,k,k1,k3,k7,k9:integer;
begin
  readln(n);
  k:=0; k1:=0; k3:=0; k7:=0; k9:=0;
  for i:=1 to 4 do
    readln(a[i]);
  for i:=5 to n do begin
    readln(a[5]);
    if a[1] mod 10 = 1 then 
      k1:=k1+1;
    if a[1] mod 10 = 3 then 
      k3:=k3+1;
    if a[1] mod 10 = 7 then 
      k7:=k7+1;
    if a[1] mod 10 = 9 then 
      k9:=k9+1;  
    if a[5] mod 10 = 1 then
      k:=k+k1;
    if a[5] mod 10 = 3 then
      k:=k+k7;
    if a[5] mod 10 = 7 then
      k:=k+k3;
    if a[5] mod 10 = 9 then
      k:=k+k9;  
    for j:=1 to 4 do
      a[j]:=a[j+1];
  end;
  writeln(k);
end.