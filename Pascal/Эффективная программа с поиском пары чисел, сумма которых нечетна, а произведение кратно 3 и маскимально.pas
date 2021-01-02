var
  a,i,n,min1c,min3c,min1n,min3n,x,y:integer;
begin
  readln(n);
  min1c:=0; min3c:=0;
  min1n:=0; min3n:=0;
  for i:=1 to n do begin
    readln(a);
    if a mod 3=0 then begin
      if (a mod 2=0) and (a>min3c) then
        min3c:=a;
      if (a mod 2<>0) and (a>min3n) then
        min3n:=a;
    end
    else begin
      if (a mod 2=0) and (a>min1c) then
        min1c:=a;
      if (a mod 2<>0) and (a>min1n) then
        min1n:=a;
    end;
  end;
  x:=min1n; y:=min3c;
  if min1c*min3n>x*y then begin
    x:=min1c;
    y:=min3n;
  end;
  if (x=0) and (y=0) then
    writeln('0')
  else
    writeln(x,' ',y);
end.