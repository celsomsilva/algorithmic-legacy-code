{

  ORIGINAL NAME: FATRECURSIVO.PAS

  This program calculates the factorial of a number
  using recursion.

  During execution, it prints detailed information
  about each recursive call, including:
  - the current value of N
  - the call number
  - the pending multiplication

  The goal is not efficiency, but to make the
  recursion process visible and easier to understand.
}

program RecursiveFactorialTrace;

uses
  crt;

var
  inputValue : integer;
  callCount  : integer;

{ Recursive factorial function with execution trace }
function Factorial(N: integer): integer;
begin
  writeln;
  writeln('Computing factorial(', N, ')');
  writeln('Call number: ', callCount);
  writeln('Current value of N: ', N);

  if N > 0 then
  begin
    callCount := callCount + 1;
    writeln('Pending operation: factorial(', N - 1, ') * ', N);
    delay(1000);
    Factorial := Factorial(N - 1) * N;
  end
  else
    Factorial := 1;
end;

begin
  callCount := 1;

  write('Enter the number to calculate the factorial: ');
  readln(inputValue);

  Factorial(inputValue);
end.

