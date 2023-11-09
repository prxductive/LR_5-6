Program z_5;
var
  array1, array2: array[1..10] of integer; 
  sum1, sum2 : integer;
  i : integer;
  begin
    for i := 1 to 10 do 
    begin
      array1[i] := Random(21) - 10; 
      array2[i] := Random(21) - 10;
    end;
      
    sum1 := 0;
    sum2 := 0;
    
    for i := 1 to 10 do 
    begin
      sum1 := sum1 + max(0, array1[i]); 
      sum2 := sum2 + max(0, array2[i]);
    end;
    if sum1 < sum2 then 
      for i := 1 to 10 do 
        array1[i] := array1[i] * 10 
      else
        for i := 1 to 10 do
          array2[i] := array2[i] * 10; 
        
        writeln('Первый массив:'); 
  for i := 1 to 10 do 
    write(array1[i], ' '); 
  writeln; 
  
  writeln('Второй массив:'); 
  for i := 1 to 10 do 
    write(array2[i], ' '); 
  writeln;      
  end.