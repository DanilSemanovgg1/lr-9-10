program zad9;
type toomass = array [1..8,1..8] of integer;mass = array [1..8] of integer;
var 
  x,y,min,sredarifm,sum,k:INTEGER;
  A:toomass;
  b:mass;
begin
min:=5;
k:=0;
sum:=0;
  for x:=1 to 8 do
  begin
    writeln();
    for y:=1 to 8 do 
    begin
      A[x,y]:=random(-10,10);
      write(A[x,y]:3)
    end;
  end;
  for x:=1 to 8 do
  begin
    for y:=1 to 8 do
    begin
      if A[x,y] < min then
      begin
        min:=A[x,y];
      end;
    end;
  B[x]:=min;
  min:=5;
  end;
  writeln();
  for x:=1 to 8 do
  begin
    write(B[x]:4)
  end;
  for x:=1 to 8 do
  begin
    sum += B[x];
    k += 1;
  end;
  writeln();
  sredarifm:=round(sum/k);
  WRITELN(sredarifm);
  for x:=1 to 8 do
  begin
    if B[x] = sredarifm then 
    begin
      writeln('в массиве есть среднее арифметическое');
      break
    end  
  end;
end.

