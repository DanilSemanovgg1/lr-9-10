Program zad2;
type mass = array [1..10] of integer;
var A:mass;i:integer;
procedure proc(a:mass);
var min_otr,max,min_abs,j:integer;
begin
  max:= -999;
  min_abs:=999;
  min_otr:=0;
  for j:=1 to 10 do 
  begin
    if a[j] > max then 
      max:=a[j];
    if abs(a[j]) < min_abs then
      min_abs:=abs(a[j]);
    if A[j] < min_otr then
      min_otr:=a[j];
  end;
  writeln();
  write('max a = ',max);
  writeln();
  write('min_abs a = ',min_abs);
  writeln();
  if min_otr <> 0 then
    write('min_otr = ',min_otr)
end;
begin
  for i:=1 to 10 do
  begin
    A[i]:=random(-5,10);
    write(A[i]:3)
  end;
  proc(A);
end.