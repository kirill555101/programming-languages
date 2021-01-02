var
  a:array[1..12000] of integer;
  i,j,x,y,n:integer;
begin
  readln(n);
  x:=0; y:=0;
  for i:=1 to n do
    readln(a[i]);
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if (a[i]>a[j]) and ((a[i]+a[j])>(x+y)) and ((a[i]+a[j]) mod 116=0) then 
        begin
          x:=a[i];
          y:=a[j];
        end;
  writeln(x,' ',y);
end.
      