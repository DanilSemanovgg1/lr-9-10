Program zad4;
type mass = array [1..10] of integer;
var
  i,sum1,sum2:integer;
  A,B:mass; // глобальные
procedure sum_pol_mass( var a,b:mass); //локальные //формальные
begin
  sum1:=0;
  sum2:=0;
  for var j:=1 to 10 do
  begin
    if a[j] > 0 then 
      sum1 += a[j];
    if b[j] > 0 then
      sum2 += b[j];
  end;
end;
begin
  write('A = ');
  for i:= 1 to 10 do
  begin
    A[i]:= random(-10,10);
    write(A[i]:3);
  end;
  writeln();
   write('B = ');
  for i:= 1 to 10 do
  begin
    B[i]:= random(-11,9);
    write(B[i]:3);
  end;
  writeln();
  sum_pol_mass(A,B);//фактические
  if sum1 > sum2 then
  begin
    write('A* = ');
    for i:=1 to 10 do
      write(A[i]*10:4)
  end;
  if sum2 > sum1 then
  begin
    write('B* = ');
    for i:=1 to 10 do
      write(B[i]*10:4)
  end
end.