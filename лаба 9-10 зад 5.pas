program zad5;
type mass = array [1..10] of integer;
var 
  i:integer;
  A,B:mass;
procedure proc(var a,b:mass);
var el1,el2,j,max,min:integer;
begin
  max:=-10;
  min:=10;
  for j:=1 to 10 do
    begin
      if a[j] mod 5 = 0 then 
        begin
          el1:=j;
          break
        end;
      if b[j] mod 5 = 0 then
        begin
          el2:=j;
          break
        end;
    end;

  if el1 <> 0 then 
    begin
      for j:=1 to 10 do
        begin
          if a[j] > max then
            max:=a[j];
        end;
      writeln();
      write('A* = ');
      for j:=1 to 10 do 
        if a[j]=max then 
          write(0:4)
        else 
          write(a[j]:4);   
      for j:=1 to 10 do
        begin
          if b[j] < min then
          min:=b[j];
        end;
      writeln();
      write('B* = ');
      for j:=1 to 10 do
        begin 
        if b[j]=min then 
        begin
         for var jj:=j to 10 do 
          write(0:4);
          break
        end
          else
           write(b[j]:4)  
        end;
    end;
 if el2 <> 0 then 
    begin
      for j:=1 to 10 do
        begin
          if b[j] > max then
            max:=b[j];
        end;
      writeln();
      write('B* = ');
      for j:=1 to 10 do 
        if b[j]=max then 
          write(0:4)
        else 
          write(b[j]:4);   
      for j:=1 to 10 do
        begin
          if a[j] < min then
          min:=a[j];
        end;
      writeln();
      write('A* = ');
      for j:=1 to 10 do
        begin 
          if a[j]=min then 
            begin
              for var jj:=j to 10 do 
                write(0:4);
              break
            end
          else
            write(a[j]:4)  
        end;
    end;
end;
begin
  write('A = ');
  for i:= 1 to 10 do
  begin
    A[i]:= random(-10,10);
    write(A[i]:4)
  end;
  writeln();
   write('B = ');
  for i:= 1 to 10 do
  begin
    B[i]:= random(-10,10);
    write(B[i]:4)
  end;
  proc(A,B);
end.