var
  x,a,b:integer;
procedure f(x:integer);
begin
  a:=0; b:=1;
  while x>0 do begin
    a:=a+1;
    b:=b*(x mod 100);
    x:=x div 100;
  end;
end;
begin
  x:=0;
  f(x);
  while (a<>3) or (b<>6) do begin
    x:=x+1;
    f(x);
  end;
  while (a<>2) or (b<>5) do begin
    x:=x-1;
    f(x);
  end;
  writeln(x);
end.