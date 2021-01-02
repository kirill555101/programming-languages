var
  a:array[1..20] of integer;
  n,i,j,x,r,t:integer;
  new:array[1..20] of integer;
begin
  readln(n);
  r:=0;
  for i:=1 to n do 
    readln(a[i]);
  for j:=1 to n do
    new[j]:=j;
  for i:=1 to n-1 do
    for j:=1 to n-i do
      if (a[j]>r) and (a[j]<a[j+1]) then begin
        t:=a[j];
        a[j]:=a[j+1];
        a[j+1]:=t;
        t:=new[j];
        new[j]:=new[j+1];
        new[j+1]:=t;
      end;
  for j:=1 to n do
    write(new[j],' ');
end.
        
        
