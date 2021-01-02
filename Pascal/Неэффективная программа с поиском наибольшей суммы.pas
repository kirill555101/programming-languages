  const d=6;
var
  a: array [1..10000] of integer;
  i,n,j,x:integer;
begin
  readln(n);
  x:=-1;
  for i:=1 to n do
    readln(a[i]);
  for i:=1 to n-d do
    for j:=i+d to n do
      if a[j]+a[i]>x then
      x:=a[j]+a[i];
  writeln(x);
end.