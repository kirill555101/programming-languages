uses crt;
label again; 
label next; 
label stop;
label ex;
label new;
var
  a:string[7];
  i:integer;
begin
  new:
  i:=0;
  while true do begin
    again:
    writeln('Введите имя пользователя');
    readln(a);
    if a='gamer' then begin
      goto next;
    end
    else begin
      i:=i+1;
      writeln('Неверное имя пользователя');
      if i=3 then goto stop else 
      goto again;
    end;
    next:
     writeln('Введите пароль');
     readln(a);
     if a='1234ah' then begin
        break;
      end
      else begin
        i:=i+1;
        writeln('Неверный пароль');
        if i=3 then goto stop else 
        goto next;
      end;
   end;
   writeln('Вход успешно выполнен');
  goto ex;
  stop:
  writeln('Вход не выполнен');
  writeln('Хотите ввести свои данные заново? Напишите yes/no');
  readln(a);
  if a='yes' then goto new;
  if a='no' then goto ex;
  ex:
end.