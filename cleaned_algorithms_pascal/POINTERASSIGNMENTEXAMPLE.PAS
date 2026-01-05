{

  ORIGINAL NAME: PONTEIRO.PAS

  This program demonstrates basic pointer usage
  and a common pointer-related mistake.

  Two integer pointers are allocated dynamically.
  One pointer receives a value, and that value is
  copied to the memory location pointed to by the
  second pointer.

  During this process, a memory reference is lost,
  illustrating how careless pointer manipulation
  can lead to unreachable memory.
}

program PointerAssignmentExample;

uses
  crt;

var
  ptrA : ^integer;
  ptrB : ^integer;

begin
  ptrA := nil;

  { Allocate memory for both pointers }
  new(ptrB);
  new(ptrA);

  { Assign a value to ptrB }
  ptrB^ := 20;

  {
    Copy the value from ptrB to ptrA.

    At this point, the original memory location
    referenced by ptrA (if any) would be lost.
    This illustrates how the operating system
    no longer has a reference to that memory block.
  }
  ptrA^ := ptrB^;

  { ptrB still points to the same memory location }
  ptrB := ptrB;

  write(ptrB^);
end.

