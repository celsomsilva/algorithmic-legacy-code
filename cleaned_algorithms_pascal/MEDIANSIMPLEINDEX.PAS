{

  ORIGINAL NAME: MEDIANA.PAS

  This program computes the median of a numeric vector.

  The program assumes that the input values are already
  provided in sorted order.

  The median is obtained by selecting the element located
  at position (N div 2) + 1.

  This is a simple and direct implementation focused on
  the definition of the median rather than sorting.
}

program MedianSimpleIndex;

uses
  crt;

var
  values : array[1..100] of real;
  i      : integer;
  n      : integer;
  medianIndex : integer;

begin
  write('Enter the number of elements in the array: ');
  readln(n);

  for i := 1 to n do
  begin
    write('Enter element ', i, ': ');
    readln(values[i]);
  end;

  { Median position (assuming sorted input) }
  medianIndex := (n div 2) + 1;

  writeln(
    'The median value is: ',
    values[medianIndex]:3:2
  );

  readkey;
end.

