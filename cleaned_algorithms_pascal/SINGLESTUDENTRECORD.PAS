{

  ORIGINAL NAME: REGISTRO.PAS
  
  This program demonstrates the use of a record
  to store data for a single student.

  The student record contains:
  - a name
  - an array of four grades

  After reading the data, the program prints
  the stored information in a clear format.

  This is a basic introductory exercise on records
  and structured data.
}

program SingleStudentRecord;

type
  TBimester = array[1..4] of real;

  TStudent = record
    name   : string;
    grades : TBimester;
  end;

var
  student : TStudent;
  i       : byte;

begin
  writeln('Student Registration');
  writeln;

  write('Enter student name: ');
  readln(student.name);
  writeln;

  for i := 1 to 4 do
  begin
    write('Enter grade ', i, ': ');
    readln(student.grades[i]);
  end;

  writeln;
  writeln('Student name: ', student.name);
  writeln;

  for i := 1 to 4 do
    writeln('Grade ', i, ': ', student.grades[i]:5:2);

  writeln;
  writeln('Press <ENTER> to exit');
  readln;
end.

