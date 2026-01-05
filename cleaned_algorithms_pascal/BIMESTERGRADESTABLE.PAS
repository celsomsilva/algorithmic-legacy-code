{

  ORIGINAL NAME: REGISTR3.PAS
  
  This program stores and displays bimonthly grades
  for a group of students.

  Each student has:
  - a name
  - four grades (one per bimester)

  After collecting the data, the program prints
  a formatted table showing all grades and names.

  This exercise focuses on:
  - records
  - arrays of records
  - formatted output
}

program BimesterGradesTable;

type
  TBimester = array[1..4] of real;

  TStudent = record
    name  : string;
    grade : TBimester;
  end;

var
  students : array[1..8] of TStudent;
  i, j     : byte;

begin
  writeln('BIMESTER GRADES');
  writeln;

  { Read student names and grades }
  for j := 1 to 8 do
  begin
    write('Enter student name: ');
    readln(students[j].name);
    writeln;

    for i := 1 to 4 do
    begin
      write('Enter grade for bimester ', i, ': ');
      readln(students[j].grade[i]);
    end;
  end;

  writeln;
  writeln(
    '1st B', '2nd B':7, '3rd B':7, '4th B':7, 'Name:':40
  );
  writeln;

  { Print formatted table }
  for j := 1 to 8 do
  begin
    i := 1;
    write(students[j].grade[i]:3:2);

    for i := 2 to 4 do
      write(students[j].grade[i]:7:2);

    write(students[j].name:50);
    writeln;
  end;

  writeln;
  writeln('Press <ENTER> to exit');
  readln;
end.

