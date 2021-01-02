  program zadacha;
var 
  x,n,y,i,g:integer;
begin
  y:=0;
  g:=0;
  writeln('Введите количество чисел');
  readln(n);
  for i:= 1 to n do begin
    writeln('Введите число');
    readln(x);
    if (x mod 2 = 0) then
      y:=y+1;
    if (x mod 2 <> 0) then
      g:=g+1;
  end;
  writeln('Количество четных чисел:',y);
  writeln('Количество нечетных чисел:',g);
end.

