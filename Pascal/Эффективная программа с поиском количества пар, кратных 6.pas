var
  a,i,n,n6,r,k2,k3,k6:integer;
begin
  readln(n);
  k2:=0; k3:=0; k6:=0;
  for i:=1 to n do begin
    readln(a);
    if a mod 6=0 then 
      k6:=k6+1
    else
    if a mod 3=0 then 
      k3:=k3+1
    else
      if a mod 2=0 then 
    k2:=k2+1;
  end;
  n6:=n-k6;
  r:=k6*(k6-1)div 2+n6*k6+k2*k3;
  writeln(r);
end.