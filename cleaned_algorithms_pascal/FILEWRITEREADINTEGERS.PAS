{

  ORIGINAL NAME: ARQUIVO 2.PAS

  This program creates a binary file containing
  the numbers from 1 to 50.

  After writing the file, it reopens it and
  displays its contents on the screen.

  This is a minimal example of binary file handling
  using sequential access in Pascal.
}

program FileWriteReadIntegers;

uses
  crt;

var
  dataFile : file of integer;
  value    : integer;

begin
  clrscr;

  { Associate the file variable with a physical file }
  assign(dataFile, 'celso.dat');

  { Create the file and open it for writing }
  rewrite(dataFile);

  { Write integers from 1 to 50 into the file }
  for value := 1 to 50 do
    write(dataFile, value);

  close(dataFile);

  { Reopen the file for reading }
  reset(dataFile);

  { Read and display file contents }
  while not eof(dataFile) do
  begin
    read(dataFile, value);
    write(value, ', ');
  end;

  close(dataFile);
end.

