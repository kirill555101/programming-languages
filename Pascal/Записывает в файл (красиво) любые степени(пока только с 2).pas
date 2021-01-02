var
  f:text;
  i,n,x,t,m:integer;
  p:real;
  k:array[0..10000] of integer;
begin
  writeln('Введите количество строк в файле(не блоьше 10000)');
  readln(n);
  writeln('В какую степень возводить числа(пока что работает только 2 степень)');
  readln(x);
  assign(f,'C:\\Users\\kir20\\Desktop\\file.txt');
  rewrite(f);
  writeln(f,'Начинаем действия!');
  k[0]:=1;
  for i:=1 to n do
    k[i]:=0;
  for i:=1 to n do begin
    p:=exp(x*ln(i));
    m:=round(p);
    while m<>0 do begin
      k[i]:=k[i]+1;
      m:=m div 10;
    end;
    if k[i]<>k[i-1] then begin
      writeln(f,'');
      writeln(f,'Ограничение!');
    end
    else
      if i<>1 then
        writeln(f,'');
    t:=0;
    write(f,'Номер строки ',i);
    write(f,':');
    write(f,' ');
    while t<>i do begin
      write(f,exp(x*ln(i)));
      t:=t+1;
      if t<>i then
      write(f,' ');
    end;
  end;
  writeln(f,'');
  writeln(f,'Заканчиваем действия!');
  close(f);
  writeln('Посмотри в файл на рабочем столе!');
end.