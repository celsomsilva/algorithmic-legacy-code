{

  ORIGINAL NAME: PONTEIROS.PAS

  This program creates a simple singly linked list
  containing the integers from 1 to 20.

  Nodes are inserted at the beginning of the list,
  which results in a naturally ordered sequence
  when inserting values from 20 down to 1.

  The list is printed as it is being built.
}

program SimpleLinkedListOneToTwenty;

uses
  crt;

type
  PNode = ^Node;
  Node = record
    value : integer;
    next  : PNode;
  end;

var
  head    : PNode;
  current : PNode;
  value   : integer;

begin
  { Initialize the list as empty }
  head := nil;

  { Build the list }
  for value := 20 downto 1 do
  begin
    new(current);
    current^.value := value;
    current^.next := head;
    head := current;

    write(current^.value, ', ');
  end;
end.

