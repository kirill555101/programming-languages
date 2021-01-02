var
  a:array[0..115] of integer;//массив из 116 элементов
  i,k,kd,t,x,y,n:integer;
begin
  readln(n);
  x:=0; y:=0;
  for i:=0 to 115 do
    a[i]:=0;
  for i:=1 to n do 
    begin
      readln(t);//вводим следующее число
      k:=t mod 116;
      kd:=116-k;
      if kd=116 then kd:=0;
      if (a[kd]>t) and ((a[kd]+t)>(x+y)) then //сумма делится на 116, когда сумма остатков делится на 116
        begin
          x:=a[kd];
          y:=t;
        end;
      if (t>a[k]) then
        a[k]:=t;
    end;
  writeln(x,' ',y);
end.