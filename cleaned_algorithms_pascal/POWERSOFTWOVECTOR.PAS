{

  ORIGINAL NAME: VETOR.PAS
  	
  This program demonstrates the use of a vector
  to store a numeric pattern.

  The vector is filled with powers of two,
  where each position i stores the value 2^i.

  After filling the vector, the values are
  printed in reverse order.
}

program PowersOfTwoVector;

uses
  crt;

type
  TIntVector = array[1..10] of integer;

var
  values : TIntVector;
  i      : integer;

begin
  clrscr;

  { Fill the vector with powers of two }
  for i := 1 to 10 do
  begin
    values[i] := 1 shl i;  { 2^i }
  end;

  { Print the vector in reverse order }
  for i := 10 downto 1 do
  begin
    write(values[i], ', ');
  end;

  readkey;
end.


