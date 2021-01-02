Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;
var
  n:longint;
type
  data=record
    fam,name:string[50];
    num:int64;
  end;
  Form1 = class(Form)
    procedure dataGridView1_CellContentClick(sender: Object; e: DataGridViewCellEventArgs);
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure button4_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  public
    {$resource Unit1.Form1.resources}
    button1: Button;
    button2: Button;
    button3: Button;
    Column4: DataGridViewTextBoxColumn;
    Column1: DataGridViewTextBoxColumn;
    Column2: DataGridViewTextBoxColumn;
    Column3: DataGridViewTextBoxColumn;
    dataGridView1: DataGridView;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    var f:file of data;
    cell:data;
    begin
      n:=1;
      InitializeComponent;
      dataGridView1.RowCount:=1000;
      dataGridView1.ColumnCount:=4;
      assign(f,'onlyone.dat');
      reset(f);
      while (not(eof(f))) do begin
        read(f,cell);
        with cell do begin
          DataGridView1[0,n-1].Value:=inttostr(n);
          DataGridView1[1,n-1].Value:=fam;
          DataGridView1[2,n-1].Value:=name;
          DataGridView1[3,n-1].Value:=inttostr(num);
          n+=1;
        end;
      end;
      closefile(f);
    end;
  end;
implementation
uses unit2, unit3,unit5;

procedure Form1.dataGridView1_CellContentClick(sender: Object; e: DataGridViewCellEventArgs);
begin
  
end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  form(new form2).Show;
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  form(new form3).Show;
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  self.Close;
  form(new form5).Show;
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
begin
  
end;
end.
