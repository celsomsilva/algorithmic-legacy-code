{

  ORIGINAL NAME: BOLHA.PAS

  This program implements a simple version of the
  bubble sort algorithm.

  The user enters four integers, which are then
  sorted in ascending order using repeated passes
  over the array.

  An auxiliary array is used to help with value
  swapping, reflecting a straightforward and
  explicit implementation style.
}

program BubbleSortBasic;

uses
  crt;

var
  i, j, k       : integer;
  values        : array[1..4] of integer;
  tempValues    : array[1..4] of integer;

begin
  clrscr;

  { Read input values }
  for i := 1 to 4 do
  begin
    write('Enter the ', i, 'th number to be sorted: ');
    readln(values[i]);
    tempValues[i] := values[i];
  end;

  { Bubble sort implementation }
  for j := 1 to 3 do
  begin
    for k := 1 to 3 do
    begin
      for i := 1 to 3 do
      begin
        if values[i] > values[i + 1] then
        begin
          values[i]     := values[i + 1];
          values[i + 1] := tempValues[i];

          tempValues[i]     := values[i];
          tempValues[i + 1] := values[i + 1];
        end;
      end;
    end;
  end;

  { Display sorted values }
  writeln;
  writeln('Sorted values:');

  for i := 1 to 4 do
    writeln(values[i]);

  readkey;
end.

