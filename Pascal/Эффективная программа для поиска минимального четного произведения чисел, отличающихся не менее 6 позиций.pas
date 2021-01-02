var
  a:array[1..7] of integer;
  i,j,n,xc,xn,yc,yn,min:integer;
begin
  min:=1000001; xc:=1001; xn:=1001; yc:=1001; yn:=1001;
  readln(n);
  for i:=1 to 6 do
    readln(a[i]);
  for i:=7 to n do begin
    readln(a[7]);
    if a[1] mod 2=0 then begin
      if a[1] < xc then xc:=a[1];
    end
    else begin
      if a[1] < xn then xn:=a[1];
    end;
    if a[7] mod 2=0 then begin
      if a[7] < yc then yc:=a[7];
    end
    else begin
      if a[7] < yn then yn:=a[7];
    end;
    if (xc*yc)<min then min:=xc*yc;
    if (xc*yn)<min then min:=xc*yn;
    if (xn*yc)<min then min:=xn*yc;
    for j:=1 to 6 do
      a[j]:=a[j+1];
  end;
  if (min=1000001) or (min mod 2<>0) then min:=-1;
  writeln(min);
end.