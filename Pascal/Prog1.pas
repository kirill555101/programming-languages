uses crt;
var
  ch:char;
  n,k,str,t,i:integer;
  s,m,file1:string;
  f:text;
begin
  assign(f,'file.txt');
  reset(f);
  while (true) do begin
    write('Введите слово: ');
    readln(s);
    t:=0; k:=0; n:=0;
    while (not(eof(f))) do begin
      t+=1;
      str:=0;
      m:='';
      read(f,file1);
      readln(f);
      for i:=1 to length(file1) do
				if (file1[i] <> ' ') then
					m += file1[i]
				else begin
					if (m = s) then begin
						n+=1;
						k:=1;
						str:=1;
					end;
					m:='';
			  end;
	    if (m = s) then begin
			  n+=1;
				k:=1;
				str:=1;
			end;
			if (str=1) then
				writeln('Слово "',s,'" содержится в ',t,'-ой строке');
			m:='';
    end;
    if (k=1) then
			writeln('В этом файле количество слов "',s,'" составляет ',n )
		else
			writeln('Нет слов "',s,'"');
		write('Продолжить? y/n: ');
		readln(ch);
		close(f);
		writeln;
		if (ch = 'n') then
			break;
		assign(f,'file.txt');
    reset(f);
  end;
end.