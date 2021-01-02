uses crt;
label again; 
label next; 
label next1;
label next2;
label next3;
label stop;
label ex;
label new;
var
  a:char;
  b:string[3];
  i:integer;
begin
  new:
  i:=0;
  while true do begin
    again:
    writeln('Введите первый символ пароля');
    readln(a);
    if a='1' then begin 
      goto next;
    end 
    else begin
      i:=i+1;
      writeln('Неверный символ'); 
      if i=3 then goto stop else 
      goto again;
    end;
    next:
    writeln('Введите второй символ пароля');
    readln(a);
    if a='2' then begin
      goto next1;
    end
    else begin
      i:=i+1;
      writeln('Неверный символ');
      if i=3 then goto stop else
      goto again;
    end;
    next1:
    writeln('Введите третий символ пароля');
    readln(a);
    if a='3' then begin 
      goto next2;
    end 
    else begin
      i:=i+1;
      writeln('Неверный символ');
      if i=3 then goto stop else
      goto again;
    end;
    next2:
    writeln('Введите четвертый символ пароля');
    readln(a);
    if a='a' then begin 
      goto next3;
    end 
    else begin
      i:=i+1;
      writeln('Неверный символ');
      if i=3 then goto stop else
      goto again;
    end;
    next3:
    writeln('Введите пятый символ пароля');
    readln(a);
    if a='b' then begin 
      break;
    end 
    else begin
      i:=i+1;
      writeln('Неверный символ');
      if i=3 then goto stop else
      goto again;
    end;
  end;
  writeln('Вход успешно выполнен');
  goto ex;
  stop:
  writeln('Вход не выполнен');
  writeln('Хотите ввести пароль заново? Напишите yes/no');
  readln(b);
  if b='yes' then goto new;
  if b='no' then goto ex;
  ex:
end.
  