var
  f:text;
  n,i,z:integer;
  x:char;
  k:array[1..10000] of integer;
begin
  for i:=1 to n do 
    k[i]:=0;
  n:=0; i:=1;
  assign(f,'C:\\Users\\kir20\\Desktop\\file.txt');
  reset(f);
  while not eof(f) do begin
    while not eoln(f) do begin
      k[i]:=k[i]+1;
      read(f,x);
    end;
    i:=i+1;
    n:=n+1;
    readln(f);
  end;
  close(f);
  z:=0;
  for i:=1 to n do
    if k[i]>z then z:=k[i];
  writeln('Количество строк в файле ',n);
  writeln('Максимальное количество символов в файле ',z);
end.