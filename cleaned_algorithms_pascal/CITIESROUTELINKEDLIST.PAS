{
  
  ORIGINAL NAME: PONTEIRO3.PAS
  
  This program models a travel route using a
  singly linked list.

  Each node represents a city and stores:
  - the city name
  - the distance from the previous city

  Cities are inserted at the beginning of the list,
  which naturally reverses their order.

  The program also keeps track of the total distance
  and prints the route while decrementing the remaining
  distance step by step.
}

program CitiesRouteLinkedList;

uses
  crt;

type
  PCityNode = ^CityNode;
  CityNode = record
    distance : real;
    cityName : string;
    next     : PCityNode;
  end;

var
  head        : PCityNode;
  current     : PCityNode;
  i, total    : integer;
  cityCount  : integer;
  remaining  : real;
  screenLine : integer;

begin
  clrscr;

  write('How many cities are in the route? ');
  readln(cityCount);

  remaining := 0;

  for i := 1 to cityCount do
  begin
    if i = 1 then
    begin
      new(head);
      head^.next := nil;

      write('Enter the name of city ', i, ': ');
      readln(head^.cityName);

      head^.distance := 0;
    end
    else
    begin
      new(current);
      current^.next := head;
      head := current;

      write('Enter the name of city ', i, ': ');
      readln(current^.cityName);

      write('Enter the distance from the previous city: ');
      readln(current^.distance);

      remaining := remaining + current^.distance;
    end;
  end;

  screenLine := 20;

  { Print route and remaining distance }
  repeat
    gotoxy(1, screenLine);
    write(head^.cityName);

    gotoxy(20, screenLine);
    write(remaining:10:2);

    remaining := remaining - head^.distance;
    head := head^.next;
    screenLine := screenLine + 1;

  until head = nil;
end.

