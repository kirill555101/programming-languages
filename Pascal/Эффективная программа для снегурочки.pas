var
  a:array[1..99] of integer;
  i,imax,d,k,n,r:integer;
begin
  readln(n);
  for i:=1 to 99 do
    a[i]:=0;
  for i:=1 to n do begin
    readln(d, k);
    r:=k mod d;
    if r>0 then
      a[r]:=a[r]+1;
  end;
  imax:=1;
  for i:=2 to 99 do
    if a[i]>=a[imax] then
      imax:=i;
  if a[imax]=0 then imax:=0;
  writeln(imax);
end.