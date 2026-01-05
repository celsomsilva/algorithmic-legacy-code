{

  ORIGINAL NAME: LISTA3.PAS

  This program simulates a small academic information system
  using text files and linked lists.

  It manages:
  - students
  - courses (disciplines)
  - enrollments
  - schedules

  Text files are used as persistent storage, while
  linked lists are built dynamically in memory to
  perform searches, removals, and reports.

  This reflects a full coursework-style integration
  of data structures, file handling, and user interaction.
}

program LinkedListsAcademicSystem;

uses
  crt;

type
  PStudent = ^Student;
  Student = record
    registration : integer;
    name         : string;
    next         : PStudent;
  end;

  Course = record
    code     : integer;
    name     : string;
    credits  : integer;
  end;

label
  ExitProgram, MainMenu;

var
  scheduleFile,
  courseFile,
  enrollmentFile,
  studentFile : text;

  totalCredits,
  in11, in12, in21, in22,
  out11, out12, out21, out22,
  day1, day2,
  a, b, c, d, m, z, w, v,
  x, y, e, f, g, j, k, h : integer;

  courseName1,
  courseName2,
  inputCourse : string;

  option : char;

  current, head : PStudent;
  tempStudent   : Student;
  courseData    : Course;

  enrolled      : array[1..3] of integer;

{ List students enrolled in a given course }
procedure ListByCourse;
var
  courseInput : string;
  courseCode  : integer;
  disc, i     : integer;
begin
  readln(courseInput);
  clrscr;

  reset(courseFile);
  while not eof(courseFile) do
  begin
    readln(courseData.code);
    readln(courseData.name);
    readln(courseData.credits);
    if courseInput = courseData.name then
      break;
  end;
  close(courseFile);

  reset(enrollmentFile);
  i := 1;
  while not eof(enrollmentFile) do
  begin
    readln(enrollmentFile, courseCode);
    readln(enrollmentFile, disc);
    if disc = courseData.code then
    begin
      enrolled[i] := courseCode;
      i := i + 1;
    end;
  end;
  close(enrollmentFile);

  reset(studentFile);
  i := 1;
  new(head);
  head^.next := nil;

  while not eof(studentFile) do
  begin
    readln(studentFile, tempStudent.registration);
    readln(studentFile, tempStudent.name);

    if tempStudent.registration = enrolled[i] then
    begin
      new(current);
      current^.next := head;
      head^.registration := tempStudent.registration;
      head^.name := tempStudent.name;
      head := current;
    end;
    i := i + 1;
  end;
  close(studentFile);

  while head^.next <> nil do
  begin
    writeln(head^.name, '   ', head^.registration);
    head := head^.next;
  end;
  writeln(head^.name, '   ', head^.registration);
end;

{ Search for a student in the linked list }
procedure SearchStudent;
var
  reg : integer;
begin
  readln(reg);
  while head^.next <> nil do
  begin
    if reg = head^.registration then
      writeln('Student found in the linked list');
    head := head^.next;
  end;
  if reg = head^.registration then
    writeln('Student found in the linked list');
end;

{ Remove the first student from the list }
procedure RemoveFirst;
begin
  head := current^.next;
  current := head;

  while head^.next <> nil do
  begin
    writeln(head^.name, '   ', head^.registration);
    head := head^.next;
  end;
  writeln(head^.name, '   ', head^.registration);
end;

{ Count total students in the list }
procedure CountStudents;
var
  count : integer;
begin
  count := 1;
  while head^.next <> nil do
    count := count + 1;

  writeln('TOTAL ENROLLED STUDENTS: ', count);
end;

{ Display main menu }
procedure Menu;
begin
  writeln('Choose an option:');
  writeln;
  writeln('G <registration> : Show student schedule');
  writeln('D <course name>  : List students enrolled in a course');
  writeln('P <registration> : Search for a student');
  writeln('R               : Remove first student from list');
  writeln('C               : Count enrolled students');
  writeln('F               : Exit program');
end;

{ Main program }
begin
  assign(scheduleFile,   'hora.txt');
  assign(courseFile,     'disc.txt');
  assign(enrollmentFile, 'matr.txt');
  assign(studentFile,    'alunos.txt');

MainMenu:
  Menu;
  option := readkey;

  case option of
    'd': ListByCourse;
    'p': SearchStudent;
    'r': RemoveFirst;
    'c': CountStudents;
    'f': goto ExitProgram;
  end;

  writeln('Return to menu? (s/n)');
  readln(option);
  if option = 's' then
    goto MainMenu;

ExitProgram:
end.

