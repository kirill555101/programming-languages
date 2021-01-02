uses FormsABC;
var
  menu:MainMenu;
  s1 := new Space(80);
  a := new button('Начать играть');
  f1 := new FlowBreak;
  s2 := new Space(80);
  b := new button('Создатели');
  f2 := new FlowBreak;
  s3 := new Space(80);
  c := new button('Выход');
begin
  MainForm.Title := 'Главное меню';
  MainForm.SetSize(400,200);
  MainForm.CenterOnScreen;
  a.width:=200;
  b.width:=200;
  c.width:=200;
end.