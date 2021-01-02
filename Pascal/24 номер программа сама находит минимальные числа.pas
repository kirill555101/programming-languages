var
  j,k,z,m,x:integer;
procedure f(x:integer);
begin
  j:=2;
  k:=0;
  while j*j<x do begin
    if x mod j=0 then
      k:=k+2;
    j:=j+1;
  end;
  if j*j=x then
    k:=k+3;
end;
procedure g(x:integer);
begin
  j:=1;
  z:=0;
  while j*j<x do begin
    if x mod j=0 then
      z:=z+2;
    j:=j+1;
  end;
  if j*j=x then
    z:=z+1;
end;
begin
  x:=0;
  m:=0;
  f(x);
  g(x);
  while true do begin
    x:=x+1;
    f(x);
    g(x);
    if k=z then begin
      writeln(x);
      m:=m+1;
    end;
    if m=2 then break;
  end;
end.
