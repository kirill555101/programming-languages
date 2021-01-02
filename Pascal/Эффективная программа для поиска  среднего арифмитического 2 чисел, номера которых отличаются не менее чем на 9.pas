var
  a:array[1..10] of integer;
  i,j,n,x:integer;
  sum:real;
begin
  readln(n);
  sum:=1001;
  x:=1001;
  for i:=1 to 9 do  
    readln(a[i]);
  for i:=10 to n do begin
    readln(a[i]);
    if a[1]<x then x:=a[1];
    if (x+a[10])/2<sum then
      sum:=(x+a[10])/2;
    for j:=1 to 9 do
      a[j]:=a[j+1];
   end;
   writeln(sum);
end.