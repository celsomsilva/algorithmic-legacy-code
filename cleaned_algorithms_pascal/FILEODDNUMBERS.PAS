{

  ORIGINAL NAME ARQUIVO.PAS

  This program creates a binary file containing the first
  50 odd numbers.

  After writing the file, it:
  - reopens it for reading,
  - displays its contents on the screen,
  - shows the physical position of each stored value.

  This is a simple example of file handling using:
  - assign
  - rewrite / reset
  - read / write
  - eof
  - sequential access

  Original exercise written in the early 2000s.
}

program FileOddNumbers;

uses
  crt;

var
  value        : integer;        { value to be written/read }
  position     : integer;        { physical position in the file }
  dataFile     : file of integer;

begin
  { Associate the file variable with a physical file }
  assign(dataFile, 'celso.dat');

  { Create the file and open it for writing }
  rewrite(dataFile);

  { Write the first 50 odd numbers to the file }
  for value := 1 to 99 do
  begin
    if (value mod 2 <> 0) then
      write(dataFile, value);
  end;

  close(dataFile);

  { Reopen the file for reading }
  reset(dataFile);

  writeln('Physical position    Value');
  writeln;

  position := 0;

  { Read and display file contents sequentially }
  while not eof(dataFile) do
  begin
    read(dataFile, value);
    writeln(position:16, '    ', value);
    position := position + 1;
  end;

  close(dataFile);
end.

