uses FormsABC;
var
  tb: textbox;
  flag,hero:boolean;
  code:integer;
function CalcSystem(p1,n1,m:string):string;
var
  p,n,x,c1,b,y,h:integer;
  res1,z:string;
function firstfirst(x,n:integer):string;
var 
  k,c:integer;
begin
  result:='';
  k:=1; b:=x; y:=0;
  while (x<>0) do begin
    c1:=x mod 10;
    c:=x mod n;
    if (c1>=10) or ((c1<>0) and (c1<>1) and (c1<>2) and (c1<>3) and (c1<>4) and (c1<>5) and (c1<>6) and (c1<>7) and (c1<>8) and (c1<>9)) then begin
      tb.AddLine('Указанное число содержит недопустимые для исходной системы счисления символы. Например, для двоичной системы счисления допустимыми символами являются только 0 и 1, а для шестнадцатеричной 0—9 и A—F.');
      flag:=false;
      hero:=false;
      exit;
    end;
    y:=y+c*k;
    k*=10;
    x:=x div n;
  end;
  str(y,result);
end;
function firstsecond(x,p:integer):string;
const
  a: array[0..35] of char=('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
var 
  c,i:integer;
begin
  result:='';
  y:=0; z:=''; m:='';
  while (x<>0) do begin
    c1:=x mod 10;
    c:=x mod n;
    if (c1>=10) or ((c1<>0) and (c1<>1) and (c1<>2) and (c1<>3) and (c1<>4) and (c1<>5) and (c1<>6) and (c1<>7) and (c1<>8) and (c1<>9)) then begin
      tb.AddLine('Указанное число содержит недопустимые для исходной системы счисления символы. Например, для двоичной системы счисления допустимыми символами являются только 0 и 1, а для шестнадцатеричной 0—9 и A—F.');
      flag:=false;
      hero:=false;
      exit;
    end;
    m:=m+a[c];
    x:=x div n;
  end;
  for i:=length(m) downto 1 do 
	  z:=z+m[i];
	result:=z;
end;
function secondfirst(x,p:integer):string;
var k,i,c:integer;
t:real;
begin
  result:='';
  k:=0; b:=x; i:=0;
  n:=10;
  while x<>0 do begin
    x:=x div n;
    i:=i+1;
  end;
  x:=b; y:=0;
  while (k)<>(i) do begin
    c:=x mod n;
    if (c>=p) or ((c<>0) and (c<>1) and (c<>2) and (c<>3) and (c<>4) and (c<>5) and (c<>6) and (c<>7) and (c<>8) and (c<>9)) then begin
      tb.AddLine('Указанное число содержит недопустимые для исходной системы счисления символы. Например, для двоичной системы счисления допустимыми символами являются только 0 и 1, а для шестнадцатеричной 0—9 и A—F.');
      flag:=false;
      hero:=false;
      exit;
    end;
    t:=exp(k*ln(p));
    y:=y+c*round(t);
    k:=k+1;
    x:=x div n;
  end;
  str(y,result);
end;
function secondsecond(m:string;p:integer):string;
var 
  k,j,c,i,e:integer;
  d: array['A'..'Z'] of integer;
  l:char;
  t:real;
begin
  result:='';
  e:=10; k:=0;
  for l:='A' to 'Z' do begin
    d[l]:=e+k;
    k:=k+1;
  end;
  j:=length(m); 
  y:=0; k:=0;
  for i:=j downto 1 do begin
    z:=m[i];
    if (z='0') or (z='1') or (z='2') or (z='3') or (z='4') or (z='5') or (z='6') or (z='7') or (z='8') or (z='9') then val(z,c,code)
    else begin
      l:=m[i];
      c:=d[l];
      if (c>=p) then begin
        tb.AddLine('Указанное число содержит недопустимые для исходной системы счисления символы. Например, для двоичной системы счисления допустимыми символами являются только 0 и 1, а для шестнадцатеричной 0—9 и A—F.');
        flag:=false;
        hero:=false;
        exit;
      end;
    end;
    if (code=0) or ((c<>0) or (c<>1) or (c<>2) or (c<>3) or (c<>4) or (c<>5) or (c<>6) or (c<>7) or (c<>8) or (c<>9)) then begin
      t:=exp(k*ln(p));
      y:=y+c*round(t);
      k:=k+1;
    end;
  end;
  str(y,result);
end;
begin
  flag:=true;
  hero:=true;
  val(p1,p,code);
  if code<>0 then exit;
  val(n1,n,code);
  if code<>0 then exit;
  if p<11 then val(m,x,code);
  if code<>0 then begin
    tb.AddLine('Указанное число содержит недопустимые для исходной системы счисления символы. Например, для двоичной системы счисления допустимыми символами являются только 0 и 1, а для шестнадцатеричной 0—9 и A—F.');
    flag:=false;
    hero:=false;
    exit;
  end;
  h:=n;
  if (n>36) or (p>36) then begin
    tb.AddLine('Основание системы счисления не может превышать 36.');
    flag:=false;
    hero:=false;
    exit;
  end;
  if (n<2) or (p<2) then begin
    tb.AddLine('Основание системы счисления не может быть меньше 2.');
    flag:=false;
    hero:=false;
  end
  else begin
    if (p=10) and (n<11) then res1:=firstfirst(x,n);
    if (p=10) and (n>10) then res1:=firstsecond(x,n);
    if (p<10) and (n=10) then res1:=secondfirst(x,p);
    if (p>10) and (n=10) then res1:=secondsecond(m,p);
    if (p<>10) and (n<>10) then begin
      if (p<10) then secondfirst(x,p)
      else if (p>10) then secondsecond(m,p);
      p:=10; n:=h;
      if (n<10) then res1:=firstfirst(y,n)
      else if (n>10) then res1:=firstsecond(y,n);
    end;
    result:=res1;
  end;
end;
var
  m := new Field('Исходное число');
  f1 := new FlowBreak;
  f2 := new FlowBreak;
  p1 := new Field('Система счисления исходного числа');
  f3 := new FlowBreak;
  f4 := new FlowBreak;
  n1 := new Field('Система счисления для перевода');
  f5 := new FlowBreak(10);
  s1 := new Space(20);
  ok := new Button('Перевести');
procedure MyClick; 
begin
  tb.Undo;
  var res:=calcsystem(p1.Text,n1.Text,m.Text);
  if (code<>0) and (hero=true) then tb.AddLine('Основание системы счисления должно быть больше либо равно 2 и меньше либо равно 36.');
  if (flag=false) or (code<>0) then exit else
  tb.AddLine(Format('Значение {0} из {1}-ричной системы счисления в {2}-ричной системе счисления равно {3}.',m.Text,p1.Text,n1.Text,res));
end;
procedure controls;
begin
  MainForm.Title := 'Перевод систем счисления';
  MainForm.SetSize(800,500);
  MainForm.CenterOnScreen;
  mainPanel.Dock := DockStyle.Left;
  mainPanel.Width := 225;
  ok.Click += MyClick;
  ParentControl := MainForm;
  tb := new TextBox;
  tb.Dock := DockStyle.Fill;
end;
begin
controls;
end.

