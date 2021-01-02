var
  a:array[1..6] of integer;
  i,j,n,k,k1,k101,l:integer;
begin
  readln(n);
  k:=0; k1:=0;  k101:=0; l:=0;
  for i:=1 to 5 do
    readln(a[i]);
  for i:=6 to n do begin
    readln(a[6]);
    if a[1] mod 101=0 then k101:=k101+1;
    k1:=k1+1;
    if a[6] mod 101=0 then k:=k+k1
    else
    k:=k+k101;
    l:=l+i-5;
    for j:=1 to 5 do
      a[j]:=a[j+1];
  end;
  writeln(l-k);
end. 