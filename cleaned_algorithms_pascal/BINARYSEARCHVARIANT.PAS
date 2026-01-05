{

  ORIGINAL NAME: BUSCA.PAS

  This program searches for a value inside a sorted array.

  The user provides:
  - the number of elements,
  - the elements in ascending order,
  - and the value to be searched.

  The search process follows a variant of binary search,
  adjusting the index based on comparisons with the
  current middle position.

  This implementation reflects a didactic approach to
  search algorithms, emphasizing reasoning over formality.
}

program BinarySearchVariant;

uses
  crt;

var
  values     : array[1..100] of integer;
  i          : integer;
  leftLimit  : integer;
  midIndex   : integer;
  target     : integer;

begin
  write('Enter the number of elements in the array: ');
  readln(leftLimit);

  write('Enter the elements in ascending order.');
  writeln;

  for i := 1 to leftLimit do
  begin
    write('Element ', i, ': ');
    readln(values[i]);
  end;

  write('Enter a value to search for: ');
  readln(target);

  { Start search from the last position }
  midIndex := leftLimit;

  { Variant of binary search }
  while values[midIndex] <> target do
  begin
    if values[midIndex] < target then
      midIndex := (leftLimit + midIndex) div 2
    else
    begin
      leftLimit := midIndex;
      midIndex := midIndex div 2;
    end;
  end;

  writeln;
  writeln(
    'The value ', values[midIndex],
    ' is located at position ', midIndex, '.'
  );

  readkey;
end.

