{

  ORIGINAL NAME: MATRIZES2.PAS

  This program demonstrates the use of records
  combined with arrays to store structured data.

  Each student has:
  - a name
  - an array of four grades

  The program reads the data for two students
  and prints their names along with their grades.

  This is a typical introductory exercise on
  records and matrix-like data organization.
}

program StudentGradesMatrix;

uses
  crt;

type
  TStudent = record
    grades : array[1..4] of real;
    name   : string;
  end;

var
  students : array[1..2] of TStudent;
  i, j     : integer;

begin
  writeln('STUDENT GRADES MATRIX PROGRAM');
  writeln;

  for i := 1 to 2 do
  begin
    writeln('Enter the student name:');
    readln(students[i].name);

    for j := 1 to 4 do
    begin
      writeln('Enter grade ', j, ':');
      readln(students[i].grades[j]);
    end;

    writeln;
    writeln('Student: ', students[i].name);

    for j := 1 to 4 do
      writeln('Grade ', j, ': ', students[i].grades[j]:5:2);

    writeln;
  end;

  writeln('Press <ENTER> to exit');
  readln;
end.

