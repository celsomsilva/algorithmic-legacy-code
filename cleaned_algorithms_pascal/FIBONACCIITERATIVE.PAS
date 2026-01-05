{

  ORIGINAL NAME: FIBONACC.PAS

  This program calculates a Fibonacci number
  using an iterative approach.

  The sequence is generated step by step by
  updating the two previous values.

  After 14 iterations, the program prints
  the 15th term of the Fibonacci sequence.

  This example contrasts with the recursive
  version and highlights iterative control flow.
}

program FibonacciIterative;

uses
  crt;

var
  index      : integer;
  current    : integer;
  previous   : integer;
  temp       : integer;

begin
  previous := 0;
  temp := 0;
  current := 1;
  index := 0;

  { Generate the Fibonacci sequence iteratively }
  while index < 14 do
  begin
    temp := current;
    current := current + previous;
    previous := temp;
    index := index + 1;
  end;

  writeln('The 15th Fibonacci term is: ', current);

  delay(6000);
end.

