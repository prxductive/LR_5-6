program z_4;
const
  Sz = 30; // размер массива

var
  i, x: integer;
  a: array[1..Sz] of integer; 
  b: array of integer; 

begin
  randomize; 
  SetLength(b, 0); 

  for i := 1 to Sz do 
  begin
    x := random(167) - 99; 
    a[i] := x; 

    if x mod 2 = 0 then
    begin
      SetLength(b, Length(b) + 1); 
      b[High(b)] := x; 
    end;
  end;

  for i := 1 to Sz do 
    write(a[i], ' ');

  writeln; 

  for i := 0 to High(b) do 
    write(b[i], ' ');
end.

  

  