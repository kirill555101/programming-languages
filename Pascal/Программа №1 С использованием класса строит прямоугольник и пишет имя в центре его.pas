uses GraphABC;
type
  windows=class
    protected
      x,y,w,h:integer;
    public
      procedure vxod(s:string;xx,yy,ww,hh:integer);
      procedure print;
  end;
  windowstext=class(windows)
    private
      name:string;
    public
      procedure vxod1(s,m:string;xx,yy,ww,hh:integer);
      procedure print1;
  end;
  procedure windows.vxod(s:string;xx,yy,ww,hh:integer);
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
  
  procedure windowstext.vxod1(s,m:string;xx,yy,ww,hh:integer);
  begin
    if (s='Изобразить окно и вывести в него строку') then begin
      name:=m; x:=xx; y:=yy; w:=ww; h:=hh;
      print;
      print1;
    end;
  end;
  
  procedure windowstext.print1;
  begin
    x:=x+round(w/2);
    y:=y+round(h/2);
    textout(x,y,name);
  end;
var
  a:windows:=new windows;
  b:windowstext:=new windowstext;
  x,y,w,h:integer;
  s:string;
begin
  write('Введите координаты прямоугольника и его стороны: ');
  read(x,y,w,h);
  a.vxod('Изобразить',x,y,w,h);
  writeln('Введите координаты прямоугольника и его стороны, а также имя: ');
  read(x,y,w,h,s);
  b.vxod1('Изобразить окно и вывести в него строку',s,x,y,w,h);
  a:=nil;
  b:=nil;
end.