{

  ORIGINAL NAME: BARALHO.PAS

  This program creates a standard 52-card deck using
  a doubly linked list.

  Each card contains:
  - Suit  : spades, clubs, hearts, diamonds
  - Value : integer from 1 to 13
  - Face  : 0 = face down, 1 = face up

  After creating the deck, the program prints all cards.
  A second part (separating the deck into red and black cards)
  was planned but intentionally left unfinished, as in the
  original source.
}

program DoublyLinkedListDeck;

uses
  crt;

type
  TSuit = (spades, clubs, hearts, diamonds);

  PCard = ^Card;
  Card = record
    prev  : PCard;
    next  : PCard;
    suit  : TSuit;
    value : integer;
    face  : integer;
  end;

var
  head     : PCard;
  current  : PCard;
  temp     : PCard;
  suitVar  : TSuit;
  valueVar : integer;

{ Build the deck as a doubly linked list }
procedure BuildDeck;
begin
  new(head);
  head^.next := nil;
  head^.prev := nil;
  head^.suit := spades;
  head^.value := 1;
  head^.face := 1;

  current := head;

  for valueVar := 1 to 13 do
  begin
    for suitVar := spades to diamonds do
    begin
      { Skip duplicate initialization of Ace of Spades }
      if (suitVar = spades) and (valueVar = 1) then
        continue;

      new(temp);
      temp^.next := current;
      temp^.prev := nil;

      current^.prev := temp;

      temp^.value := valueVar;
      temp^.face := random(2);
      temp^.suit  := suitVar;

      current := temp;
    end;
  end;
end;

{ Print the deck contents }
procedure PrintDeck;
begin
  current := head;

  for valueVar := 1 to 52 do
  begin
    if current^.value < 10 then
      write('0');

    write(current^.value, ' of ');

    case current^.suit of
      spades   : write('spades');
      clubs    : write('clubs');
      hearts   : write('hearts');
      diamonds : write('diamonds');
    end;

    write(', ', current^.face, ' / ');
    current := current^.next;

    if valueVar mod 4 = 0 then
      writeln;
  end;

  writeln;
  writeln('Press <ENTER> to continue');
  readkey;
  clrscr;
end;

{
procedure SplitDecks;
begin
  This procedure was intended to split the deck into
  two separate lists:
  - red cards (hearts and diamonds)
  - black cards (spades and clubs)

  It was left unfinished in the original implementation
  and is preserved here as such.
end;
}

begin
  randomize;
  BuildDeck;
  PrintDeck;
  { SplitDecks; }
end.

