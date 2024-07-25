with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Main is
    N, K : Integer;
    A : integer;
begin
    Ada.Integer_Text_IO.Get(N);
    Ada.Integer_Text_IO.Get(K);
    for I in 1 .. N loop
        Ada.Integer_Text_IO.Get(A);
        if A mod K = 0 then
            Ada.Integer_Text_IO.Put(A / K, 0);
            Ada.Text_IO.Put(" ");
        end if;
    end loop;
end Main;
