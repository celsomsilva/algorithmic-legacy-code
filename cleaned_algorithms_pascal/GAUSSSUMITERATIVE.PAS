{

  ORIGINAL NAME: GAUS.PAS

  This program computes the sum of the first N
  positive integers using an iterative approach
  inspired by Gauss's summation idea.

  Instead of using the direct formula,
  the program repeatedly adds (N + 1) exactly
  N / 2 times.

  This implementation emphasizes reasoning
  about arithmetic patterns rather than
  formula memorization.
}

program GaussSumIterative;

uses
  crt;

var
  halfValue : real;
  counter   : integer;
  sum       : integer;
  inputN   : integer;

begin
  clrscr;

  writeln('Enter a value: ');
  readln(inputN);

  halfValue := inputN / 2;
  sum := 0;
  counter := 1;

  { Add (N + 1) repeatedly, N / 2 times }
  while counter <= halfValue do
  begin
    sum := (inputN + 1) + sum;
    counter := counter + 1;
  end;

  writeln('Sum result: ', sum);

  delay(6000);
end.

