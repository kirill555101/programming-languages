var
  a:array[1..7] of integer;
  i,j,n,x,max:integer;
begin
  readln(n);
  x:=-1; max:=-1;
  for i:=1 to 6 do
    readln(a[i]);
  for i:=7 to n do begin
    readln(a[7]);
    if a[1]>max then
      max:=a[1];
    if a[1]+a[7]>x then
      x:=a[1]+a[7];
    for j:=1 to 6 do
      a[j]:=a[j+1];
  end;
  writeln(x);
end.
