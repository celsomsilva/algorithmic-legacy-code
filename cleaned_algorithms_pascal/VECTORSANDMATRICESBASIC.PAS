{

  ORIGINAL NAME: MATRIZES.PAS

  This program demonstrates basic usage of
  one-dimensional and two-dimensional arrays.

  First, a vector with two integer elements
  is read from input and printed.

  Then, a 2x3 matrix of real numbers is read
  and printed element by element.

  This is a straightforward introductory
  exercise on arrays and matrices.
}

program VectorsAndMatricesBasic;

uses
  crt;

var
  vector : array[1..2] of integer;
  matrix : array[1..2, 1..3] of real;
  i, j   : integer;

begin
  { Read vector values }
  for i := 1 to 2 do
    readln(vector[i]);

  { Print vector values }
  for i := 1 to 2 do
    writeln(vector[i]);

  { Read matrix values }
  for i := 1 to 2 do
    for j := 1 to 3 do
      readln(matrix[i, j]);

  { Print matrix values }
  for i := 1 to 2 do
    for j := 1 to 3 do
      writeln(matrix[i, j]);

  delay(6000);
end.

