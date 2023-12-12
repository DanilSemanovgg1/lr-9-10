program zad10;
type dwamass = array [1..8,1..8] of integer;mass = array [1..8] of integer;
var 
  x,y,k,max:integer;
  A:dwamass;
  B,C:mass;
begin
  k:=0;
  max:=-2;
  for x:=1 to 8 do 
  begin
    writeln();
    for y:= 1 to 8 do 
    begin
      A[x,y]:=random(-2,5);
      write(A[x,y]:3);
    end;
  end;
  for x:=1 to 8 do 
  begin
    for y:=1 to 8 do 
    begin
      if A[x,y] > max then
        max:=A[x,y];
    end;
    B[x]:= max;
    max:=-2;
  end;
  for x:= 1 to 8 do 
  begin
    for y:=1 to 8 do
    begin
      if A[x,y] = B[x] then
      begin
        k += 1
      end;
    end;
  if k <> 1 then 
    C[x]:= -1
  else
    C[x]:= 1;
  k:=0;
  end;
  writeln();
  writeln();
  for x:=1 to 8 do
    write(C[x]:3)
end.
