-- Ada (GNAT 12.2)
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO;

procedure Program is
   I : Integer := 1;
   F : String := "FizzBuzz";
begin
   for I in 1 .. 100 loop
      if I mod 15 = 0 then
        Put_Line(F(1..8));
      elsif I mod 3 = 0 then
        Put_Line(F(1..4));
      elsif I mod 5 = 0 then
        Put_Line(F(5..8));
      else
        Put_Line(Integer'Image(I));
      end if;
   end loop;
end Program;
