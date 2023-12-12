program zad6;
type dwamass = array [1..6,1..8] of integer;
     mass = array [1..6] of integer;
var 
  i,j:integer;
  A:dwamass;
  B:mass;
begin
  for i:= 1 to 6 do
    begin
    writeln();
    for j:=1 to 8 do
      begin
      A[i,j]:= random(-10,10);
      write(A[i,j]:3);
      if j = 1 then 
      begin
        if abs(A[i,1]) >= 4 then
          B[i]:= A[i,1]
        else 
          B[i]:= 0 ;
      end;
      end;
      end;
writeln();
write('B = ');
for i:=1 to 6 do
begin
  write(B[i]:4);
end;
  
end.