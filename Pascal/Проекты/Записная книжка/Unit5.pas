Unit Unit5;

interface

uses System, System.Drawing, System.Windows.Forms,unit1;
var
  t:form1;
type
  Form5 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit5.Form5.resources}
    button1: Button;
    button2: Button;
    button3: Button;
    {$include Unit5.Form5.inc}
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

procedure Form5.button1_Click(sender: Object; e: EventArgs);
begin
  t:=new Form1;
  form(t).show;
  hide;
end;

procedure Form5.button2_Click(sender: Object; e: EventArgs);
var
  f:file of data;
begin
  assign(f,'onlyone.dat');
  rewrite(f);
  closefile(f);
  t:=new Form1;
  form(t).show;
  hide;
end;

procedure Form5.button3_Click(sender: Object; e: EventArgs);
begin
  self.Close;
end;

end.
