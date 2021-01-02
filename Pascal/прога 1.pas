type
  stud=record
    index:integer;
    fam:string[20];
    ex:array[1..3] of integer;
    zach:array[1..4] of char;
  end;
var
  student:array[1..30] of stud;
  a:stud;
  n,i,j,k,t,t1:integer;
begin
  writeln('Введите n: ');
  readln(n);
  for i:=1 to n do begin
    writeln('Введите номер группы: ');
    readln(student[i].index);
    writeln('Введите фамилию студента: '); 
    readln(student[i].fam);
    writeln('Введите оценки студента(2-5): '); 
    for j:=1 to 3 do
      readln(student[i].ex[j]);
    writeln('Введите зачеты студента(н/з): ');
    for j:=1 to 4 do
      readln(student[i].zach[j]);
  end;
  for i:=1 to n-1 do
    for j:=1 to n-i do begin
      t:=0; t1:=0;
      for k:=1 to 3 do begin
        if (student[j].ex[k]=2) then t+=1;
        if (student[j+1].ex[k]=2) then t1+=1;
      end;
      for k:=1 to 4 do begin
        if (student[j].zach[k]='н') then t+=1;
        if (student[j+1].zach[k]='н') then t1+=1;
      end;
      if (t>t1) then begin
        a:=student[j+1];
        student[j+1]:=student[j];
        student[j]:=a;
      end;
    end;
  for i:=1 to n do begin
    t:=0;
    for j:=1 to 3 do
      if (student[i].ex[j]=2) then t+=1;
    for j:=1 to 4 do
      if (student[i].zach[j]='н') then t+=1;
    writeln('Студент ',student[i].index,' группы ',student[i].fam,' с ',t,' задолженостями.');
  end;
end.
    