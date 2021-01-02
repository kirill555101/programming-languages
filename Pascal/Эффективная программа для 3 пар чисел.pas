var
  a,b,c,t,n,max,min,s,i,r:integer;
begin
  readln(n);
  s:=0; r:=10001;
  for i:=1 to n do begin
    readln(a,b,c);
    if a>b then begin
      t:=a;
      a:=b;
      b:=t;
    end;
    if a>c then begin
      t:=a;
      a:=c;
      c:=t;
    end;
    if b>c then begin
      t:=b;
      b:=c;
      c:=t;
    end;
    s:=s+sqr(a);
    if ((b-a) mod 2>0) and ((sqr(b)-sqr(a))<r) then r:=sqr(b)-sqr(a);
    if ((c-a) mod 2>0) and ((sqr(c)-sqr(a))<r) then r:=sqr(c)-sqr(a);
  end;
  if s mod 2<>0 then begin
    if r=10001 then s:=0 
    else s:=s+r;
  end;
  writeln(s);
end.
  