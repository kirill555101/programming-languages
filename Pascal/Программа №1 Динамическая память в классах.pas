uses GraphABC;
type
  windows=class
    private
      x,y,w,h:integer;
    public
      constructor create(s:string;xx,yy,ww,hh:integer);
      procedure print; virtual;
  end;
  windowstext=class(windows)
    private
      name:string;
    public
      constructor create(s,m:string;xx,yy,ww,hh:integer);
      procedure print; virtual;
  end;
  
  constructor windows.create(s:string;xx,yy,ww,hh:integer);
  begin
    if (s='Изобразить') then begin
      x:=xx; y:=yy; w:=ww; h:=hh;
      print;
    end;
  end;
  
  procedure windows.print;
  begin
    rectangle(x,y,x+w,y+h);
  end;
  
  constructor windowstext.create(s,m:string;xx,yy,ww,hh:integer);
  begin
    if (s='Изобразить окно и вывести в него строку') then begin
      name:=m; x:=xx; y:=yy; w:=ww; h:=hh;
      inherited print;
      print;
    end;
  end;
  
  procedure windowstext.print;
  begin
    x:=x+round(w/2);
    y:=y+round(h/2);
    textout(x,y,name);
  end;
var
  a:windows;
  b:windowstext;
  x,y,w,h:integer;
  s:string;
begin
  write('Введите координаты прямоугольника и его стороны: ');
  read(x,y,w,h);
  a:=new windows('Изобразить',x,y,w,h);
  writeln('Введите координаты прямоугольника и его стороны, а также имя: ');
  read(x,y,w,h,s);
  b:=new windowstext('Изобразить окно и вывести в него строку',s,x,y,w,h);
  a:=nil;
  b:=nil;
end.