{

  ORIGINAL NAME: LISTAORDENADA.PAS


  This program demonstrates three main concepts:

  1. Generation of random numbers.
  2. Sorting an array using a bubble-sort style algorithm,
     with step-by-step visualization.
  3. Searching for a value using binary search, also with
     visual feedback during the search process.

  Delays are intentionally included to make the algorithm
  behavior easier to follow on screen.
}

program SortAndBinarySearchVisual;

uses
  crt;

type
  TIntArray = array[1..20] of integer;

var
  values     : TIntArray;
  found      : boolean;
  i, j       : integer;
  temp       : integer;
  leftIndex  : integer;
  rightIndex : integer;
  middle     : integer;
  target     : integer;

begin
  randomize;

  { Generate and display random values }
  for i := 1 to 20 do
  begin
    values[i] := random(101);
    write(values[i], ' ');
    delay(100);
  end;

  writeln;
  writeln('Press <ENTER> to start sorting');
  readln;

  { Bubble sort with visualization }
  i := 1;
  j := 1;

  while i < 20 do
  begin
    while j < 20 do
    begin
      if values[j] > values[j + 1] then
      begin
        temp := values[j];
        values[j] := values[j + 1];
        values[j + 1] := temp;
      end;

      write(values[j], ' ');
      delay(20);
      j := j + 1;
    end;

    writeln;
    j := 1;
    i := i + 1;
  end;

  writeln;
  writeln('Enter a number to search for: ');
  readln(target);

  { Binary search with visual feedback }
  found := false;
  leftIndex := 1;
  rightIndex := 20;
  middle := (leftIndex + rightIndex) div 2;

  while (target <> values[middle]) and (rightIndex <> leftIndex) do
  begin
    write(values[middle], ' ');
    delay(500);

    if target > values[middle] then
      leftIndex := middle + 1
    else
      rightIndex := middle;

    middle := (leftIndex + rightIndex) div 2;
  end;

  write(values[middle]);
  writeln;

  found := target = values[middle];

  if found then
    writeln('The number is located at position ', middle)
  else
    writeln('The number does not exist in the array');

  writeln;
  readkey;
end.

