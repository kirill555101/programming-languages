var
  f:text;
  num,i:real;
  count:integer;
begin
  assign(f,'1.txt');
  i:=1.36;
  while i<1.72 do begin
    reset(f);
    count:=0;
    while not(eof(f)) do begin
      readln(f,num);
      if (num>=i) and (num<=(i+0.04)) then
        count+=1;
    end;
    writeln('В ',i,' - ',i+0.04,' ',count,' чисел');
  close(f);
  i+=0.04;
  end;
end.