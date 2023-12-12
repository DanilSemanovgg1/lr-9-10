Program zad3;
type mass = array [1..10] of integer;
var
  A:mass;
  i:integer;//// глобальные
function fist_pol(A:mass):integer;
var j:integer;/// локальные 
begin 
  for j:=1 to 10 do ///формальные
  begin
    if A[j] > 0 then
      begin
      fist_pol:= j;
      break
      end
    else 
      fist_pol:= 0;
  end;
end;
begin/////// фактические  
  for i:=1 to 10 do
    begin
    A[i]:= random(-10,10);
    write(A[i]:3);
    end;
  writeln();
  writeln(fist_pol(A))
end.