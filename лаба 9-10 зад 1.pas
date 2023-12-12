Program zad1;
type mass = array [1..20] of integer;
var pr,i:integer;A:mass;
function prmas(a:mass): integer;
begin
  pr:=1;
  for var i:= 1 to 20 do 
  begin
  pr:= pr * a[i];
  end;
  prmas:=pr;
end;
begin
  for i:=1 to 20 do
  begin
    A[i]:= random(1,10);
  end;
  write('pr a = ',prmas(A));
end.
