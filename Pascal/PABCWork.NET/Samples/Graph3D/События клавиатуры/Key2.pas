uses Graph3D;

begin
  View3D.ShowViewCube := False;
  var s := Box(0,0,0,3,1,2,Colors.Blue);
  OnKeyDown := k -> 
    case k of
    Key.Left: s.AnimMoveOn(1,0,0).Begin;
    Key.Right: s.AnimMoveOn(-1,0,0).Begin;
    Key.Up: s.AnimMoveOn(0,-1,0).Begin;
    Key.Down: s.AnimMoveOn(0,1,0).Begin;
    Key.X: s.AnimRotate(OrtX,10).Begin;
    Key.Y: s.AnimRotate(OrtY,10).Begin;
    Key.Z: s.AnimRotate(OrtZ,10).Begin;
    end;
end.