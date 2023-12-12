program zad8;
type dwomass = array [1..8,1..8] of integer;mass = array [1..8] of integer;
var 
  x,y:integer;
  A:dwomass;
  B:mass;
  k:boolean;
begin
  k:=False;
  for x:= 1 to 8 do 
    begin
    writeln();
    for y:= 1 to 8 do 
    begin
      A[x,y]:=random(1,10);
      write(A[x,y]:3);
    end;
    end;
    writeln();
    writeln();
  for x:=1 to 8 do 
  begin
    for y:=1 to 7 do 
      begin
      if A[x,y] + A[x,y+1] = 7 then
      begin
        k := True ;
        break;
      end;
      end;
      if k = True then 
        write(1:3)
      else 
        write(-1:3);
      k:= False;
  end;
end.