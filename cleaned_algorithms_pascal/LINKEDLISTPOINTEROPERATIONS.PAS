{

   ORIGINAL NAME: PONTEIRO2.PAS
 
  This program demonstrates basic operations on a
  singly linked list using pointers.

  The following operations are performed:
  - manual creation of a linked list
  - traversal and printing of the list
  - searching for a specific value
  - insertion of a new node after the searched value
  - verification of the final list contents

  The program illustrates pointer manipulation
  in a very explicit and low-level way.
}

program LinkedListPointerOperations;

uses
  crt;

type
  PNode = ^Node;
  Node = record
    value : integer;
    next  : PNode;
  end;

var
  head      : PNode;
  tempNode  : PNode;
  nodeA     : PNode;
  newNode   : PNode;

begin
  clrscr;

  { Create first node }
  new(head);
  head^.value := 2;
  head^.next := nil;

  { Insert node with value 6 at the beginning }
  new(nodeA);
  nodeA^.value := 6;
  nodeA^.next := head;
  head := nodeA;

  { Insert node with value 9 at the beginning }
  new(tempNode);
  tempNode^.value := 9;
  tempNode^.next := head;
  head := tempNode;

  { Traverse and print the list }
  tempNode := head;
  while tempNode^.next <> nil do
  begin
    write(tempNode^.value, ' ');
    tempNode := tempNode^.next;
  end;
  writeln;

  { Reset pointer to the beginning of the list }
  tempNode := head;

  { Search for the node with value 2 }
  while tempNode^.value <> 2 do
  begin
    write(tempNode^.value, ' ');
    tempNode := tempNode^.next;
  end;
  writeln;

  { Insert a new node after the searched node }
  new(newNode);
  newNode^.value := 10;
  newNode^.next := nil;
  tempNode^.next := newNode;

  { Verification: print list starting from node with value 6 }
  writeln;
  tempNode := nodeA;

  while tempNode <> nil do
  begin
    write(tempNode^.value, ' ');
    tempNode := tempNode^.next;
  end;
end.

