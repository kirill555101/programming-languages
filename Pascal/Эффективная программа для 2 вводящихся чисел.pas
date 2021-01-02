var
  r,s,max,min,n,i,a,b:integer;
begin
  readln(n);
  s:=0; r:=10001;
  for i:=1 to n do begin
    readln(a,b);
    if a>b then  begin 
      max:=a; min:=b;
    end
    else begin 
      max:=b; min:=a;
    end;
    s:=s+max;
    if ((max-min)<r) and ((max-min) mod 3>0) then r:=max-min;
  end;
  if s mod 3 = 0 then begin
    if r=10001 then 
      s:=0
    else
      s:=s-r;
  end;
  writeln(s);
end.