Unit Unit3;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form3 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure maskedTextBox1_MaskInputRejected(sender: Object; e: MaskInputRejectedEventArgs);
  {$region FormDesigner}
  private
    {$resource Unit3.Form3.resources}
    button2: Button;
    button1: Button;
    button3: Button;
    label1: &Label;
    maskedTextBox1: MaskedTextBox;
    {$include Unit3.Form3.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;
  data=record
    fam,name:string[50];
    num:int64;
  end;
implementation
uses unit4,unit5,unit1;

procedure Form3.button1_Click(sender: Object; e: EventArgs);
var
  s:string:='';
  m:string:='';
  m1:string:='';
  i:integer;
  f:file of data;
  cell:data;
  b:boolean:=false;
  c:boolean:=false;
  key:boolean:=false;
  space:boolean:=false;
begin
  s:=maskedtextbox1.text;
  if (s='') then exit;
  for i:=1 to length(s) do
    if ((s[i] in ['a'..'z']) or (s[i] in ['A'..'Z']) or (s[i] in ['А'..'Я']) or (s[i] in ['а'..'я'])) then begin
      b:=true;
      break;
    end;
  for i:=1 to length(s) do
    if (s[i] in ['0'..'9']) then begin
      c:=true;
      break;
    end;
  for i:=1 to length(s) do
    if (s[i]=' ') then begin
      space:=true;
      break;
    end;
  if (b and c and not(space)) then begin
    MessageBox.Show('Неверная форма записи','Ошибка',MessageBoxButtons.OK,MessageBoxIcon.Error);
    exit;
  end;
  t.dataGridView1.Rows.Clear;
  t.dataGridView1.RowCount:=1000;
  t.dataGridView1.ColumnCount:=4;
  assign(f,'onlyone.dat');
  reset(f);
  n:=1;
  if (not(space)) then begin
    while (not(eof(f))) do begin
      read(f,cell);
      with cell do
        if ((s=fam) or (s=name) or (s=inttostr(num))) then begin
          key:=true;
          t.DataGridView1[0,n-1].Value:=inttostr(n);
          t.DataGridView1[1,n-1].Value:=fam;
          t.DataGridView1[2,n-1].Value:=name;
          t.DataGridView1[3,n-1].Value:=inttostr(num);
        end;
    end;
  end
  else begin
    i:=1;
    while (s[i]<>' ') do begin
      m+=s[i];
      i+=1;
    end;
    i+=1;
    while (i<>length(s)+1) do begin
      m1+=s[i];
      i+=1;
    end; 
    b:=false;
    c:=false;
    for i:=1 to length(m) do
    if ((m[i] in ['a'..'z']) or (m[i] in ['A'..'Z']) or (m[i] in ['А'..'Я']) or (m[i] in ['а'..'я'])) then begin
      b:=true;
      break;
    end;
    for i:=1 to length(m) do
      if (m[i] in ['0'..'9']) then begin
        c:=true;
        break;
      end;
    if (b and c) then begin
      closefile(f);
      assign(f,'onlyone.dat');
      reset(f);
      n:=1;
      while (not(eof(f))) do begin
        read(f,cell);
        with cell do begin
          t.DataGridView1[0,n-1].Value:=inttostr(n);
          t.DataGridView1[1,n-1].Value:=fam;
          t.DataGridView1[2,n-1].Value:=name;
          t.DataGridView1[3,n-1].Value:=inttostr(num);
          n+=1;
        end;
      end;
      closefile(f);
      MessageBox.Show('Неверная форма записи','Ошибка',MessageBoxButtons.OK,MessageBoxIcon.Error);
      exit;
    end;
    b:=false;
    c:=false;
    for i:=1 to length(m1) do
    if ((m1[i] in ['a'..'z']) or (m1[i] in ['A'..'Z']) or (m1[i] in ['А'..'Я']) or (m1[i] in ['а'..'я'])) then begin
      b:=true;
      break;
    end;
    for i:=1 to length(m1) do
      if (m1[i] in ['0'..'9']) then begin
        c:=true;
        break;
      end;
    if (b and c) then begin
      closefile(f);
      assign(f,'onlyone.dat');
      reset(f);
      n:=1;
      while (not(eof(f))) do begin
        read(f,cell);
        with cell do begin
          t.DataGridView1[0,n-1].Value:=inttostr(n);
          t.DataGridView1[1,n-1].Value:=fam;
          t.DataGridView1[2,n-1].Value:=name;
          t.DataGridView1[3,n-1].Value:=inttostr(num);
          n+=1;
        end;
      end;
      closefile(f);
      MessageBox.Show('Неверная форма записи','Ошибка',MessageBoxButtons.OK,MessageBoxIcon.Error);
      exit;
    end;
    while (not(eof(f))) do begin
      read(f,cell);
      with cell do
        if (((m=fam) or (m=name) or (m=inttostr(num))) and (((m1=fam) or (m1=name) or (m1=inttostr(num))))) then begin
          key:=true;
          t.DataGridView1[0,n-1].Value:=inttostr(n);
          t.DataGridView1[1,n-1].Value:=fam;
          t.DataGridView1[2,n-1].Value:=name;
          t.DataGridView1[3,n-1].Value:=inttostr(num);
        end;
   end;
  end;
  if (not(key)) then begin
    closefile(f);
    assign(f,'onlyone.dat');
    reset(f);
    n:=1;
    while (not(eof(f))) do begin
      read(f,cell);
      with cell do begin
        t.DataGridView1[0,n-1].Value:=inttostr(n);
        t.DataGridView1[1,n-1].Value:=fam;
        t.DataGridView1[2,n-1].Value:=name;
        t.DataGridView1[3,n-1].Value:=inttostr(num);
        n+=1;
      end;
    end;
    closefile(f);
    MessageBox.Show('Записи не найдены','Информация',MessageBoxButtons.OK,MessageBoxIcon.Information);
    exit;
  end;
  closefile(f);
end;

procedure Form3.button2_Click(sender: Object; e: EventArgs);
begin
  self.Close;
end;

procedure Form3.button3_Click(sender: Object; e: EventArgs);
var 
  f:file of data;
  cell:data;
begin
  t.dataGridView1.Rows.Clear;
  t.dataGridView1.RowCount:=1000;
  t.dataGridView1.ColumnCount:=4;
  assign(f,'onlyone.dat');
  reset(f);
  n:=1;
  while (not(eof(f))) do begin
    read(f,cell);
    with cell do begin
      t.DataGridView1[0,n-1].Value:=inttostr(n);
      t.DataGridView1[1,n-1].Value:=fam;
      t.DataGridView1[2,n-1].Value:=name;
      t.DataGridView1[3,n-1].Value:=inttostr(num);
      n+=1;
    end;
  end;
  closefile(f);
  maskedtextbox1.text:='';
end;

procedure Form3.maskedTextBox1_MaskInputRejected(sender: Object; e: MaskInputRejectedEventArgs);
begin
  
end;

end.
