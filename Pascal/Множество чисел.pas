var
  a:array[0..9] of integer;
  x:real;
  i,j,n:integer;
  flag:boolean;
begin
  readln(n);
  for i:=1 to n do begin
    readln(x);
    if (x<1) then
      a[round(x*10)]:=i;
  end;
  for i:=1 to n do begin
    flag:=false;
    for j:=0 to 9 do
      if a[j]=i then
        flag:=true;
    if flag=false then
      write(i,' ');
  end;
end.
  