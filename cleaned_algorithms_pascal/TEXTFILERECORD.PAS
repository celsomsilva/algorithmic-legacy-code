{

  ORIGINAL NAME: ARQUIVOTEXT.PAS

  This program demonstrates how to store and retrieve
  structured data using a text file.

  A record is used in memory to group related fields
  (name, age, salary, and gender), while the file itself
  stores the data in a sequential, line-based format.

  The program performs two main operations:
  1. Write the record data to a text file.
  2. Read the data back from the file and display it.

  This reflects a common introductory exercise on
  text files and records.
}

program TextFileRecord;

uses
  crt;

type
  TEmployee = record
    name   : string;
    age    : integer;
    salary : real;
    gender : string;
  end;

var
  employee : TEmployee;
  textFile : text;

{ Write record data to a text file }
procedure CreateFile;
begin
  assign(textFile, 'edit.dat');
  rewrite(textFile);

  writeln('Enter name: ');
  readln(employee.name);
  writeln(textFile, employee.name);

  writeln('Enter age: ');
  readln(employee.age);
  writeln(textFile, employee.age);

  writeln('Enter salary: ');
  readln(employee.salary);
  writeln(textFile, employee.salary);

  writeln('Enter gender (M = Male, F = Female): ');
  readln(employee.gender);
  writeln(textFile, employee.gender);

  close(textFile);
end;

{ Read record data from the text file }
procedure ReadFile;
begin
  assign(textFile, 'edit.dat');
  reset(textFile);

  readln(textFile, employee.name);
  writeln(employee.name);

  readln(textFile, employee.age);
  writeln(employee.age);

  readln(textFile, employee.salary);
  writeln(employee.salary:6:2);

  readln(textFile, employee.gender);
  writeln(employee.gender);

  close(textFile);
end;

begin
  clrscr;
  CreateFile;
  ReadFile;
end.

