Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    procedure button5_Click(sender: Object; e: EventArgs);
    procedure button9_Click(sender: Object; e: EventArgs);
    procedure button1_Click(sender: Object; e: EventArgs);
    procedure button2_Click(sender: Object; e: EventArgs);
    procedure button3_Click(sender: Object; e: EventArgs);
    procedure button4_Click(sender: Object; e: EventArgs);
    procedure button6_Click(sender: Object; e: EventArgs);
    procedure button7_Click(sender: Object; e: EventArgs);
    procedure button8_Click(sender: Object; e: EventArgs);
    procedure button10_Click(sender: Object; e: EventArgs);
    procedure Form1_Load(sender: Object; e: EventArgs);
    procedure button11_Click(sender: Object; e: EventArgs);
    procedure button12_Click(sender: Object; e: EventArgs);
    procedure button14_Click(sender: Object; e: EventArgs);
    procedure button15_Click(sender: Object; e: EventArgs);
    procedure button13_Click(sender: Object; e: EventArgs);
    procedure button16_Click(sender: Object; e: EventArgs);
    procedure textBox1_TextChanged(sender: Object; e: EventArgs);
    procedure button17_Click(sender: Object; e: EventArgs);
    procedure button18_Click(sender: Object; e: EventArgs);
    procedure button19_Click(sender: Object; e: EventArgs);
    procedure button2_KeyPress(sender: Object; e: KeyPressEventArgs);
    procedure button2_KeyDown(sender: Object; e: KeyEventArgs);
  {$region FormDesigner}
  private
    {$resource Unit1.Form1.resources}
    button2: Button;
    button3: Button;
    button4: Button;
    button5: Button;
    button6: Button;
    button7: Button;
    button8: Button;
    button9: Button;
    button10: Button;
    button11: Button;
    button12: Button;
    button14: Button;
    button15: Button;
    button13: Button;
    button16: Button;
    button1: Button;
    button17: Button;
    button18: Button;
    button19: Button;
    textBox1: TextBox;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation
var
  k,n,h,i,f,g,l,zero:integer;
  a,b,c,j:real;
  m,v:char;
  x:string;
  flag,hero,my,you:boolean;

procedure Form1.button5_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'4';
  x:=x+'4';
end;

procedure Form1.button9_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'8';
  x:=x+'8';
end;

procedure Form1.button1_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  zero:=1;
  textBox1.Text:=textBox1.Text+'0';
  x:=x+'0';
  if (length(x)=1) and (x='0') then x:='';
end;

procedure Form1.button2_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'1';
  x:=x+'1';
end;

procedure Form1.button3_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'2';
  x:=x+'2';
end;

procedure Form1.button4_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'3';
  x:=x+'3';
end;

procedure Form1.button6_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'5';
  x:=x+'5';
end;

procedure Form1.button7_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'6';
  x:=x+'6';
end;

procedure Form1.button8_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'7';
  x:=x+'7';
end;

procedure Form1.button10_Click(sender: Object; e: EventArgs);
begin
  if (f=1) or ((my=false) and (m='/')) then exit;
  if ((m<>'0') and (k=0)) or (x='') then textBox1.Clear;
  k:=1;
  textBox1.Text:=textBox1.Text+'9';
  x:=x+'9';
end;

procedure Form1.Form1_Load(sender: Object; e: EventArgs);
begin
  if x='' then begin
    textBox1.Clear;
    x:='';
    m:='0';
    v:='0';
    a:=0;
    b:=0;
    c:=0;
    n:=0;
    h:=0;
    f:=0;
    g:=0;
    j:=0;
    l:=0;
    hero:=true;
    flag:=true;
    my:=true;
    you:=true;
    textBox1.Text:='0';
  end;
end;

procedure Form1.button11_Click(sender: Object; e: EventArgs);
begin
  if (my=false) and (m='/') then exit;
  if hero=false then begin
    if f=1 then  begin
      b:=j;
      you:=false;
    end
    else begin
        if x<>'' then begin
          if (zero=1) then b:=0
          else
            if h=0 then b:=real.Parse(x)
            else b:=-real.Parse(x);
          you:=false;
        end;
    end;
    if you then exit;
    if b=0 then my:=false
    else my:=true;
    if (my=false) and (m='/') then begin
      textBox1.Text:='Ошибка';
      exit;
    end;
    case m of
      '/': c:=a/b;
      '*': c:=a*b;
      '-': c:=a-b;
      '+': c:=a+b
    end;
    textBox1.Clear;
    textBox1.Text:=floattostr(c);
    flag:=false;
    f:=0;
  end;   
  m:='/';
  k:=0;
  if (f=1) or (g=1) then begin
    a:=j;
    hero:=false;
  end
  else begin
    if n=1 then x:=x+'0';
    if flag then begin
      if h=0 then begin
        if x<>'' then a:=real.Parse(x)
        else a:=0;
      end
      else begin
        if x<>'' then a:=-real.Parse(x)
        else a:=0;
      end;
    end
    else begin
      a:=c;
      c:=0;
      flag:=true;
    end;
    hero:=false;
  end;
  h:=0;
  n:=0;
  x:='';
  f:=0;
  l:=0;
  g:=0;
  zero:=0;
  you:=true;
end;

procedure Form1.button12_Click(sender: Object; e: EventArgs);
begin  
   if (my=false) and (m='/') then exit;
  if hero=false then begin
    if f=1 then  begin
      b:=j;
      you:=false;
    end
    else begin
        if x<>'' then begin
          if (zero=1) then b:=0
          else
            if h=0 then b:=real.Parse(x)
            else b:=-real.Parse(x);
          you:=false;
        end;
    end;
    if you then exit;
    if b=0 then my:=false
    else my:=true;
    if (my=false) and (m='/') then begin
      textBox1.Text:='Ошибка';
      exit;
    end;
    case m of
      '/': c:=a/b;
      '*': c:=a*b;
      '-': c:=a-b;
      '+': c:=a+b
    end;
    textBox1.Clear;
    textBox1.Text:=floattostr(c);
    flag:=false;
    f:=0;
  end;  
  m:='*';
  k:=0;
  if (f=1) or (g=1) then begin
    a:=j;
    hero:=false;
  end
  else begin
    if n=1 then x:=x+'0';
    if flag then begin
      if h=0 then begin
        if x<>'' then a:=real.Parse(x)
        else a:=0;
      end
      else begin
        if x<>'' then a:=-real.Parse(x)
        else a:=0;
      end;
    end
    else begin
      a:=c;
      c:=0;
      flag:=true;
    end;
    hero:=false;
  end;
  h:=0;
  n:=0;
  x:='';
  f:=0;
  l:=0;
  g:=0;
  zero:=0;
  you:=true;
end;

procedure Form1.button14_Click(sender: Object; e: EventArgs);
begin
   if (my=false) and (m='/') then exit;
  if hero=false then begin
    if f=1 then  begin
      b:=j;
      you:=false;
    end
    else begin
        if x<>'' then begin
          if (zero=1) then b:=0
          else
            if h=0 then b:=real.Parse(x)
            else b:=-real.Parse(x);
          you:=false;
        end;
    end;
    if you then exit;
    if b=0 then my:=false
    else my:=true;
    if (my=false) and (m='/') then begin
      textBox1.Text:='Ошибка';
      exit;
    end;
    case m of
      '/': c:=a/b;
      '*': c:=a*b;
      '-': c:=a-b;
      '+': c:=a+b
    end;
    textBox1.Clear;
    textBox1.Text:=floattostr(c);
    flag:=false;
    f:=0;
  end;   
  m:='-';
  k:=0;
  if (f=1) or (g=1) then begin
    a:=j;
    hero:=false;
  end
  else begin
    if n=1 then x:=x+'0';
    if flag then begin
      if h=0 then begin
        if x<>'' then a:=real.Parse(x)
        else a:=0;
      end
      else begin
        if x<>'' then a:=-real.Parse(x)
        else a:=0;
      end;
    end
    else begin
      a:=c;
      c:=0;
      flag:=true;
    end;
    hero:=false;
  end;
  h:=0;
  n:=0;
  x:='';
  f:=0;
  l:=0;
  g:=0;
  zero:=0;
  you:=true;
end;

procedure Form1.button15_Click(sender: Object; e: EventArgs);
begin
   if (my=false) and (m='/') then exit;
  if hero=false then begin
    if f=1 then  begin
      b:=j;
      you:=false;
    end
    else begin
        if x<>'' then begin
          if (zero=1) then b:=0
          else
            if h=0 then b:=real.Parse(x)
            else b:=-real.Parse(x);
          you:=false;
        end;
    end;
    if you then exit;
    if b=0 then my:=false
    else my:=true;
    if (my=false) and (m='/') then begin
      textBox1.Text:='Ошибка';
      exit;
    end;
    case m of
      '/': c:=a/b;
      '*': c:=a*b;
      '-': c:=a-b;
      '+': c:=a+b
    end;
    textBox1.Clear;
    textBox1.Text:=floattostr(c);
    flag:=false;
    f:=0;
  end;     
  m:='+';
  k:=0;
  if (f=1) or (g=1) then begin
    a:=j;
    hero:=false;
  end
  else begin
    if n=1 then x:=x+'0';
    if flag then begin
      if h=0 then begin
        if x<>'' then a:=real.Parse(x)
        else a:=0;
      end
      else begin
        if x<>'' then a:=-real.Parse(x)
        else a:=0;
      end;
    end
    else begin
      a:=c;
      c:=0;
      flag:=true;
    end;
    hero:=false;
  end;
  h:=0;
  n:=0;
  x:='';
  f:=0;
  l:=0;
  g:=0;
  zero:=0;
  you:=true;
end;

procedure Form1.button13_Click(sender: Object; e: EventArgs);
begin
  if ((my=false) and (m='/')) or ((h=1) and (x<>'') and (x<>'0') and (f=1)) then begin
    textBox1.Text:='Ошибка';
    exit;
  end;
  if f=1 then b:=j
  else begin
    if flag then begin
      if x<>'' then begin
        if h=0 then b:=real.Parse(x)
        else b:=-real.Parse(x);
      end
      else 
        if ((k=0)or(zero=1)) then b:=0
        else if a<>0 then b:=a;
    end
    else begin
      a:=c;
      if x<>'' then begin
        if h=0 then b:=real.Parse(x)
        else b:=-real.Parse(x);
      end;
    end;
  end;
  textBox1.Clear;
  x:='';
  if b=0 then my:=false
  else my:=true;
  if (my=false) and (m='/') then begin
    textBox1.Text:='Ошибка';
    exit;
  end;
  case m of
    '/': c:=a/b;
    '*': c:=a*b;
    '-': c:=a-b;
    '+': c:=a+b
    else c:=b;
  end;
  textBox1.Text:=floattostr(c);
  flag:=false;
  hero:=true;
  you:=true;
  f:=0;
  l:=0;
  zero:=0;
  g:=0;
end;

procedure Form1.button16_Click(sender: Object; e: EventArgs);
begin
  textBox1.Clear;
  x:='';
  m:='0';
  v:='0';
  zero:=0;
  a:=0;
  b:=0;
  c:=0;
  n:=0;
  h:=0;
  f:=0;
  g:=0;
  j:=0;
  l:=0;
  hero:=true;
  flag:=true;
  my:=true;
  you:=true;
  textBox1.Text:='0';
end;

procedure Form1.textBox1_TextChanged(sender: Object; e: EventArgs);
begin

end;

procedure Form1.button17_Click(sender: Object; e: EventArgs);
begin
  if l=2 then exit;
  if ((h=1) and (x<>'') and (x<>'0')) or ((my=false) and (m='/')) then begin
    textBox1.Text:='Ошибка';
    exit;
  end;  
  if n=1 then x:=x+'0';
  if x<>'' then begin
      if h=0 then j:=real.Parse(x)
      else j:=-real.Parse(x);
  end
  else
    if c<>0 then j:=c
    else
    if j=0 then j:=0;
  j:=sqrt(j);
  if c<>0 then c:=j;
  x:=floattostr(j);
  textBox1.Clear;
  textBox1.Text:=textBox1.Text+x;
  if f=1 then g:=1;
  f:=1;
  l:=l+1;
end;

procedure Form1.button18_Click(sender: Object; e: EventArgs);
begin
  if (my=false) and (m='/') then exit;
  if h=0 then begin
    textBox1.Clear;
    textBox1.Text:=textBox1.Text+'-';
    if x<>'' then textBox1.Text:=textBox1.Text+x
    else textBox1.Text:=textBox1.Text+c;
    h:=1;
  end
  else begin
    textBox1.Clear;
    if x<>'' then textBox1.Text:=textBox1.Text+x
    else textBox1.Text:=textBox1.Text+c;
    h:=0;
  end;
end;

procedure Form1.button19_Click(sender: Object; e: EventArgs);
begin
  if ((my=false) and (m='/')) or (f=1) then exit;
  if n=0 then begin
    textBox1.Text:=textBox1.Text+'.';
    x:=x+'.';
    n:=1;
  end;
end;

procedure Form1.button2_KeyPress(sender: Object; e: KeyPressEventArgs);
begin
  
end;

procedure Form1.button2_KeyDown(sender: Object; e: KeyEventArgs);
begin
  
end;

end.
