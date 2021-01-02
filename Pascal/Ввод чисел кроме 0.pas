var
  n,x,r,a7,a1,y:integer;
begin
  y:=0; a1:=0; a7:=0; n:=0;
  readln(x);
    while x<>0 do begin
      n:=n+1;
      if (x mod 7=0) and (x mod 49<>0) and (x>a7) then a7:=x;
      if (x mod 7<>0) and (x>a1) then a1:=x;
      readln(x);
    end;
   if (a1*a7<>0) and (a1*a7>r)  then
   r:=a1*a7
   else r:=1;
   readln(y);
   writeln('Введено чисел: ',n);
   writeln('Контрольное значение: ',y);
   writeln('Вычисленное значение: ',r);
   if r=y then writeln('Значения совпали')
   else writeln('Значения не совпали');
end.
   
      