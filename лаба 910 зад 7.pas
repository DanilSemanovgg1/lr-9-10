program zad7;
type dwamass = array [1..8,1..6] of integer;
     mass = array [1..8] of integer;
var 
  k,i,j:integer;
  A:dwamass;
  B:mass;
begin
  k:=0;
  for i:= 1 to 8 do 
    begin
    writeln();
    for j:= 1 to 6 do 
      begin
        A[i,j]:= random(-1,10);
        write(A[i,j]:4);
      end;
    end;
    for i:= 1 to 8 do
      begin
      for j:= 1 to 6 do 
        begin
          if A[i,j] > -1 then
            B[i]:= 1 
        else
          begin
          B[i]:= -1;
          break
          end;
        
      end;
      end;

 writeln();
 writeln();
  for i:=1 to 8 do 
  begin
    write(B[i]:3)
  end;
end.