type
  stud = record
    index: integer;
    fam: string[20];
    ex: array[1..3] of integer;
    zach: array[1..4] of char;
  end;

type
  st = array[1..30] of stud;

procedure vvod(var st1: st; n: integer);
var
  i, j: integer;
begin
  for i := 1 to n do
  begin
    writeln('Введите номер группы: ');
    readln(st1[i].index);
    writeln('Введите фамилию студента: '); 
    readln(st1[i].fam);
    writeln('Введите оценки студента(2-5): '); 
    for j := 1 to 3 do
      readln(st1[i].ex[j]);
    writeln('Введите зачеты студента(н/з): ');
    for j := 1 to 4 do
      readln(st1[i].zach[j]);
  end;
end;

procedure sort(var st1: st; n: integer);
var
  i, j, t, t1, k: integer;
  a: stud;
begin
  for i := 1 to n - 1 do
    for j := 1 to n - i do
    begin
      t := 0; t1 := 0;
      for k := 1 to 3 do
      begin
        if (st1[j].ex[k] = 2) then t += 1;
        if (st1[j + 1].ex[k] = 2) then t1 += 1;
      end;
      for k := 1 to 4 do
      begin
        if (st1[j].zach[k] = 'н') then t += 1;
        if (st1[j + 1].zach[k] = 'н') then t1 += 1;
      end;
      if (t > t1) then begin
        a := st1[j + 1];
        st1[j + 1] := st1[j];
        st1[j] := a;
      end;
    end;
end;

procedure print(st1: st; n: integer);
var
  i, j, t: integer;
begin
  for i := 1 to n do
  begin
    t := 0;
    for j := 1 to 3 do
      if (st1[i].ex[j] = 2) then t += 1;
    for j := 1 to 4 do
      if (st1[i].zach[j] = 'н') then t += 1;
    writeln('Студент ', st1[i].index, ' группы ', st1[i].fam, ' с ', t, ' задолженостями.');
  end;
end;

var
  student: st;
  n: integer;

begin
  writeln('Введите n: ');
  readln(n);
  vvod(student, n);
  sort(student, n);
  print(student, n);
end.
