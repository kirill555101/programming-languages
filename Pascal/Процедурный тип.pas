type
  func=function (x:real):real;
procedure vuvod(f:func;x:real);
begin
  writeln(f(x));
end;
function f1(x:real):real;
begin
  result:=x;
end;
function f2(x:real):real;
begin
  result:=x*x;
end;
begin
  vuvod(f1,5);
  vuvod(f2,7);
end.