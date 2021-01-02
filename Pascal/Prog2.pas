uses crt;
type
  import=record
    name,country:string[100];
    amount:real;
  end;
const
  max1=10;
var
  f:file of import;
  b:import;
  search:string;
  k,i:integer;
begin
  k:=0;
  assign(f,'file.dat');
  rewrite(f);
  for i:=1 to max1 do begin
		writeln('Введите имя товара, страну и объем товара №',i,': ');
	  with b do begin
		  readln(name); readln(country); readln(amount);
		end;
		write(f,b);
	end;
  close(f);
  assign(f,'file.dat');
  reset(f);
  write('Введите название страны: ');
  read(search);
  writeln;
  while (not eof(f)) do begin
    read(f,b);
    with b do
      if (country=search) then begin
        k:=1;
        writeln('Название товара ',name,', его объем ',amount);
       end;
  end;
  close(f);
	if (k = 0) then
		writeln('Нет товаров из такой страны');
end.
