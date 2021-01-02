Unit Unit2;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form2 = class(Form)
    procedure label1_Click(sender: Object; e: EventArgs);
    procedure label5_Click(sender: Object; e: EventArgs);
    procedure label3_Click(sender: Object; e: EventArgs);
    procedure label2_Click(sender: Object; e: EventArgs);
    procedure Form2_Load(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit2.Form2.resources}
    label2: &Label;
    label3: &Label;
    maskedTextBox1: MaskedTextBox;
    maskedTextBox2: MaskedTextBox;
    maskedTextBox3: MaskedTextBox;
    button1: Button;
    button2: Button;
    label5: &Label;
    {$include Unit2.Form2.inc}
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

procedure Form2.label1_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form2.label5_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form2.label3_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form2.label2_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form2.Form2_Load(sender: Object; e: EventArgs);
begin
  
end;

procedure Form2.button1_Click(sender: Object; e: EventArgs);
var
m:string[50]:='';
m1:string[50]:='';
m2:string[50]:='';
i:integer;
f:file of data;
cell:data;
begin 
  m:=maskedtextbox1.text;
  m1:=maskedtextbox2.text;
  m2:=maskedtextbox3.text;
  for i:=1 to length(m) do
    if (m[i] in ['0'..'9']) then begin
      MessageBox.Show('Введена неверная фамилия','Ошибка',MessageBoxButtons.OK,MessageBoxIcon.Error);
      exit;
    end;
  for i:=1 to length(m1) do
    if (m1[i] in ['0'..'9']) then begin
      MessageBox.Show('Введено неверное имя','Ошибка',MessageBoxButtons.OK,MessageBoxIcon.Error);
      exit;
    end;
  for i:=1 to length(m2) do
    if ((m2[i] in ['a'..'z']) or (m2[i] in ['A'..'Z']) or (m2[i] in ['А'..'Я']) or (m2[i] in ['а'..'я'])) then begin
      MessageBox.Show('Введен неверный телефон','Ошибка',MessageBoxButtons.OK,MessageBoxIcon.Error);
      exit;
    end;
  if ((m='') or (m1='') or (m2='')) then exit;
  assign(f,'onlyone.dat');
  reset(f);
  Seek(f, FileSize(f));
  with cell do begin
    fam:=m;
    name:=m1;
    num:=strtoint64(m2);
    t.DataGridView1[0,n-1].Value:=inttostr(n);
    t.DataGridView1[1,n-1].Value:=m;
    t.DataGridView1[2,n-1].Value:=m1;
    t.DataGridView1[3,n-1].Value:=m2;
    n+=1;
  end;
  write(f,cell);
  closefile(f);
  maskedtextbox1.text:='';
  maskedtextbox2.text:='';
  maskedtextbox3.text:='';
end;

procedure Form2.button2_Click(sender: Object; e: EventArgs);
begin
  self.Close;
end;
end.
