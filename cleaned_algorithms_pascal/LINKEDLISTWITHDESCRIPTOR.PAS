{

  ORIGINAL NAME: LISTADEESCRITOR.PAS

  This program implements a linear linked list
  using a descriptor structure.

  The descriptor stores:
  - a pointer to the first node
  - a pointer to the last node
  - the number of nodes in the list

  The program performs the following operations:
  1. Create a list with integers from 1 to 10.
  2. Insert the value 15 before the fourth node.
  3. Remove the last node from the list.
  4. Print all nodes in the list.
}

program LinkedListWithDescriptor;

type
  PNode = ^Node;
  Node = record
    next  : PNode;
    value : integer;
  end;

  PDescriptor = ^Descriptor;
  Descriptor = record
    first : PNode;
    count : integer;
    last  : PNode;
  end;

var
  desc        : PDescriptor;
  current     : PNode;
  newNode     : PNode;
  removedNode : PNode;
  i, valueAux : integer;

begin
  { Allocate descriptor }
  new(desc);
  desc^.count := 10;

  { Create last node (value 10) }
  new(current);
  current^.value := 10;
  current^.next := nil;

  valueAux := 9;
  i := 9;

  { Build list backwards from 9 to 1 }
  while i > 0 do
  begin
    new(newNode);
    newNode^.value := valueAux;
    newNode^.next := current;
    current := newNode;

    i := i - 1;
    valueAux := valueAux - 1;
  end;

  { Set descriptor pointers }
  desc^.first := current;

  while current^.next <> nil do
    current := current^.next;

  desc^.last := current;

  { Insert value 15 before the fourth node }
  current := desc^.first;
  for i := 1 to 2 do
    current := current^.next;

  current^.value := 15;

  { Remove the last node }
  current := desc^.first;
  for i := 1 to 6 do
    current := current^.next;

  removedNode := current^.next;
  desc^.last := current;
  current^.next := nil;
  dispose(removedNode);

  { Print list contents }
  current := desc^.first;
  i := 0;

  while i <> 10 do
  begin
    write(current^.value, ', ');
    current := current^.next;
    i := i + 1;
  end;
end.

