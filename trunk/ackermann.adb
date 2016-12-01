<<<<<<< HEAD
aaaaaaaaaaaa

nowa linia master
=======
#dodatkowa linia
>>>>>>> remotes/origin/branch
with Ada.Command_Line; use Ada.Command_Line;
with Gnat.Io; use Gnat.Io;

procedure Ackermann is

function Ack (x, y : in Integer) return Integer
is
begin
  if (x = 0) then
    return y + 1;
  elsif (y = 0) then
    return Ack (x - 1,1);
  else
    return Ack (x - 1, Ack (x, y - 1));
  end if;
end Ack;

x,y,a : Integer;
begin
  if (Argument_Count = 2) then
    x := Integer'Value (Argument (1));
    y := Integer'Value (Argument (2));
  elsif (Argument_Count = 1) then
    x := 3;
    y := Integer'Value (Argument (1));
  else
    x := 3;
    y := 3;
  end if;
  a := Ack (x, y);
  Put ("Ack (");
  Put (x);
  Put (",");
  Put (y);
  Put (") = ");
  Put (a);
  New_Line;
end Ackermann;
