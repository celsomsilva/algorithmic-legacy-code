{

  ORIGINAL NAME: PONTEIRO1.PAS

  This program demonstrates the most basic use
  of a pointer in Pascal.

  Memory is dynamically allocated for an integer,
  a value is assigned to that memory location,
  and the value is then printed.

  This example serves as an introduction to
  pointer allocation and dereferencing.
}

program BasicPointerUsage;

uses
  crt;

var
  intPtr : ^integer;

begin
  clrscr;

  { Allocate memory for the integer pointer }
  new(intPtr);

  { Assign a value to the allocated memory }
  intPtr^ := 20;

  { Print the value stored at the memory location }
  write(intPtr^);
end.

