{

  ORIGINAL NAME: ARVORE.PAS

  This program builds a binary tree using a recursive
  pre-order representation read from standard input.

  Each node stores a single character.
  The dot character ('.') represents a null node.

  After building the tree, the program:
  - prints the nodes during the unwinding of recursion,
  - identifies all leaf nodes,
  - stores them in a vector,
  - and finally prints the list of leaves.

  This is a classic exercise involving:
  - dynamic memory allocation
  - binary trees
  - recursion
  - leaf traversal
}

program BinaryTreeLeaves;

type
  PNode = ^Node;
  Node = record
    left  : PNode;
    right : PNode;
    value : char;
  end;

var
  root        : PNode;
  inputChar  : char;
  leafVector : array[1..10] of char;
  leafCount  : integer;
  index      : integer;

{ Store leaf nodes (nodes with no children) }
procedure CollectLeaves(var node: PNode);
begin
  if node^.left = nil then
    if node^.right = nil then
    begin
      leafCount := leafCount + 1;
      leafVector[leafCount] := node^.value;
    end;
end;

{ Recursively build the binary tree }
procedure BuildTree(var node: PNode);
begin
  new(node);

  write('Enter tree character (use "." for empty node): ');
  readln(inputChar);

  if inputChar <> '.' then
  begin
    node^.value := inputChar;

    BuildTree(node^.left);
    BuildTree(node^.right);

    { Node is printed when a subtree is completed }
    write(node^.value, ', ');

    CollectLeaves(node);
  end
  else
    node := nil;
end;

begin
  leafCount := 0;

  { Build the binary tree }
  BuildTree(root);

  writeln;
  write('Leaf nodes: ');

  for index := 1 to leafCount do
    write(leafVector[index], ', ');

  writeln;
end.

