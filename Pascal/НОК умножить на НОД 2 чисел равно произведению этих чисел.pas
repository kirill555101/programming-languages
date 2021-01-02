var nod,nok,t,s,x,y,i:integer;
begin
  readln(x,y);
  t:=x; s:=y;
  while x<>y do begin
    if x>y then x:=x-y
    else y:=y-x;
  end;
  nod:=x;
  nok:=t*(s div x);
  x:=t; y:=s;
  writeln(nod,' ',nok);
  if x*y=nod*nok then writeln('Да')
  else writeln('Нет');
end.

  