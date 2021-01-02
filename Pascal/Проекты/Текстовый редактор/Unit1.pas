Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;
type
  Form1 = class(Form)
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure toolStripMenuItem3_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem1_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem4_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem6_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem7_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem5_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem8_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem10_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem11_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem12_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem14_Click(sender: Object; e: EventArgs);
    procedure fontDialog1_Apply(sender: Object; e: EventArgs);
    procedure toolStripMenuItem15_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem16_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem17_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem18_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    menuStrip1: MenuStrip;
    toolStripMenuItem3: ToolStripMenuItem;
    toolStripMenuItem4: ToolStripMenuItem;
    richTextBox1: RichTextBox;
    openFileDialog1: OpenFileDialog;
    saveFileDialog1: SaveFileDialog;
    contextMenuStrip1: System.Windows.Forms.ContextMenuStrip;
    components: System.ComponentModel.IContainer;
    toolStripMenuItem5: ToolStripMenuItem;
    toolStripMenuItem6: ToolStripMenuItem;
    toolStripMenuItem7: ToolStripMenuItem;
    toolStripMenuItem8: ToolStripMenuItem;
    toolStripMenuItem2: ToolStripMenuItem;
    toolStripMenuItem10: ToolStripMenuItem;
    toolStripMenuItem11: ToolStripMenuItem;
    toolStripMenuItem12: ToolStripMenuItem;
    toolStripMenuItem9: ToolStripMenuItem;
    toolStripMenuItem14: ToolStripMenuItem;
    fontDialog1: FontDialog;
    toolStripMenuItem15: ToolStripMenuItem;
    toolStripMenuItem16: ToolStripMenuItem;
    toolStripMenuItem17: ToolStripMenuItem;
    printDialog1: PrintDialog;
    toolStripMenuItem18: ToolStripMenuItem;
    toolStripMenuItem1: ToolStripMenuItem;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation
{$apptype windows}
{$reference System.Windows.Forms.dll}

var t:boolean:=false;
procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.toolStripMenuItem3_Click(sender: Object; e: EventArgs);
begin
  OpenFileDialog1.ShowDialog;
  RichTextBox1.LoadFile(OpenFileDialog1.FileName);
end;

procedure Form1.toolStripMenuItem1_Click(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.toolStripMenuItem4_Click(sender: Object; e: EventArgs);
begin
  if t then
    RichTextBox1.SaveFile(SaveFileDialog1.FileName);
end;

procedure Form1.toolStripMenuItem6_Click(sender: Object; e: EventArgs);
begin
  RichTextBox1.Copy;
end;

procedure Form1.toolStripMenuItem7_Click(sender: Object; e: EventArgs);
begin
  RichTextBox1.Paste;
end;

procedure Form1.toolStripMenuItem5_Click(sender: Object; e: EventArgs);
begin
  RichTextBox1.Cut;
end;

procedure Form1.toolStripMenuItem8_Click(sender: Object; e: EventArgs);
begin
  t:=true;
  SaveFileDialog1.ShowDialog;
  RichTextBox1.SaveFile(SaveFileDialog1.FileName);
end;

procedure Form1.toolStripMenuItem10_Click(sender: Object; e: EventArgs);
begin
  RichTextBox1.Cut;
end;

procedure Form1.toolStripMenuItem11_Click(sender: Object; e: EventArgs);
begin
  RichTextBox1.Copy;
end;

procedure Form1.toolStripMenuItem12_Click(sender: Object; e: EventArgs);
begin
   RichTextBox1.Paste;
end;

procedure Form1.toolStripMenuItem14_Click(sender: Object; e: EventArgs);
begin
  fontdialog1.font:=richtextbox1.selectionfont;
  fontdialog1.ShowDialog;
  richtextbox1.selectionfont:=fontdialog1.font;
end;

procedure Form1.fontDialog1_Apply(sender: Object; e: EventArgs);
begin
  
end;

procedure Form1.toolStripMenuItem15_Click(sender: Object; e: EventArgs);
begin
  var printDialog := new PrintDialog;
  printDialog.ShowDialog;
end;

procedure Form1.toolStripMenuItem16_Click(sender: Object; e: EventArgs);

begin
 var d: DateTime := DateTime.Now;
 if (d.Minute>9) then  begin
    if (d.Hour>9) then richtextbox1.Text+=d.Hour+':'+d.Minute+' '+d.Day+'.'+d.Month+'.'+d.Year
    else richtextbox1.Text+='0'+d.Hour+':'+d.Minute+' '+d.Day+'.'+d.Month+'.'+d.Year
 end
 else  begin
     if (d.Hour>9) then richtextbox1.Text+=d.Hour+':0'+d.Minute+' '+d.Day+'.'+d.Month+'.'+d.Year
    else richtextbox1.Text+='0'+d.Hour+':0'+d.Minute+' '+d.Day+'.'+d.Month+'.'+d.Year
 end;
end;

procedure Form1.toolStripMenuItem17_Click(sender: Object; e: EventArgs);
begin
  self.Close;
end;

procedure Form1.toolStripMenuItem18_Click(sender: Object; e: EventArgs);
begin
  if (not (String.IsNullOrEmpty(richtextbox1.Text))) then  
   begin
      richtextbox1.SelectionStart := 0;  
      richtextbox1.SelectionLength := richtextbox1.Text.Length;  
   end  
end;

end.
