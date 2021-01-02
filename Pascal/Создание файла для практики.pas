type
  date=record
    day:integer;
    month:integer;
    year:integer;
  end;
  
  Product_File=record
    name:string[40];
    release:date;
    company:string[40];
    memory:integer;
  end;
var
  f:file of product_file;
  g:product_file;
begin
  assign(f,'Практика//file.dat');
  reset(f);
  read(f,g);
  writeln(g.release.year);
  close(f);
end.