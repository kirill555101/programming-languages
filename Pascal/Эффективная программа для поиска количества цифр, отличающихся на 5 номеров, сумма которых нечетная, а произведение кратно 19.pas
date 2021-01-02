var
  a:array[1..6] of integer;
  i,j,n,k,k1c,k19c,k1n,k19n:integer;//k1c и k19c-количество чисел, которые четные и кратны 1 и 19, а k1n и k19n-количество чисел, которые нечетные и кратны 1 и 19
begin
  readln(n);
  k:=0; k1c:=0; k19c:=0; k1n:=0; k19n:=0;
  for i:=1 to 5 do
    readln(a[i]);
  for i:=6 to n do begin
    readln(a[6]);
    if a[1] mod 2 = 0 then begin//проверяем на четность первое число
      if a[1] mod 19 = 0 then k19c:=k19c+1;
      k1c:=k1c+1;
    end
    else begin
      if a[1] mod 19 = 0 then k19n:=k19n+1;
      k1n:=k1n+1;
    end;
    if a[6] mod 2 = 0 then begin//проверяем на четность шестое число
      if a[6] mod 19 = 0 then k:=k+k1n
      else k:=k+k19n;
    end
    else begin
      if a[6] mod 19 = 0 then k:=k+k1c
      else k:=k+k19c
    end;
    for j:=1 to 5 do
      a[j]:=a[j+1];
  end;
  writeln(k);
end.