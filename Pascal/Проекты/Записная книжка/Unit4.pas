Unit Unit4;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form4 = class(Form)
    procedure button1_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  private
    {$resource Unit4.Form4.resources}
    label1: &Label;
    pictureBox1: PictureBox;
    button1: Button;
    {$include Unit4.Form4.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form4.button1_Click(sender: Object; e: EventArgs);
begin
  self.Close;
end;

end.
