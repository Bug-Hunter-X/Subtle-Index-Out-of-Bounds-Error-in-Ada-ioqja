```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array

   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;

begin
   for I in Positive_Index loop
      My_Arr(I) := I * 2;
   end loop;

   for I in 1..10 loop --Error: potential index out of bound
       Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;

exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Index out of bounds");
end Example;
```