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


program linkedlist;

uses crt;

type
  pont = record
    data : integer;
    prox : ^pont;
  end;

var
  aux, prim, p, aux2 : ^pont;

begin
  clrscr;

  { first node }
  new(prim);
  prim^.data := 2;
  prim^.prox := nil;

  { insert at beginning }
  new(p);
  p^.data := 6;
  p^.prox := prim;
  prim := p;

  new(aux);
  aux^.data := 9;
  aux^.prox := prim;
  prim := aux;

  { print list (until last node) }
  while (prim^.prox <> nil) do
  begin
    write(prim^.data, ' ');
    prim := prim^.prox;
  end;

  writeln;

  { restore head }
  prim := aux;

  { search }
  while (prim^.data <> 2) do
  begin
    write(prim^.data, ' ');
    prim := prim^.prox;
  end;

  writeln;

  { insert after the search }
  new(aux2);
  aux2^.data := 10;
  aux2^.prox := nil;
  prim^.prox := aux2;

  { erase }
  aux := p;

  { verification }
  writeln;
  while (aux <> nil) do
  begin
    write(aux^.data, ' ');
    aux := aux^.prox;
  end;

end.

