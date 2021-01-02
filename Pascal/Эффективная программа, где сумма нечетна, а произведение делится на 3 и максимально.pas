var
  a,x1n,x3n,y1c,y3c,i,n:integer;
begin
  readln(n);
  x1n:=0; x3n:=0;
  y1c:=0; y3c:=0;
  for i:=1 to n do 
    begin
      readln(a);
      if (a mod 2=0) then 
        begin
          if (a mod 3=0) and (a>y3c) then
            y3c:=a;
          if (a mod 3<>0) and (a>y1c) then
            y1c:=a;
        end
      else 
        begin
          if (a mod 3=0) and (a>x3n) then
            x3n:=a;
          if (a mod 3<>0) and (a>x1n) then
            x1n:=a;
        end
    end;
  if ((x1n<>0) and (y3c<>0)) or ((x3n<>0) and (y1c<>0)) then 
    begin
      if (x1n*y3c)>(x3n*y1c) then 
       begin
          if  (y3c>x1n) then
            writeln(x1n,' ',y3c)
          else
           writeln(y3c,' ',x1n)
        end
      else 
        begin
          if  (x3n>y1c) then
            writeln(y1c,' ',x3n)
          else
           writeln(x3n,' ',y1c)
        end
    end
  else
    writeln(0);
end.