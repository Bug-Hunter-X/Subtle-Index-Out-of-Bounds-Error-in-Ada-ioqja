```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0);

   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index;

begin
   for I in Positive_Index loop
      My_Arr(I) := I * 2;
   end loop;

   for I in Positive_Index loop --Corrected: Using subtype for index
       Ada.Text_IO.Put_Line(Integer'Image(My_Arr(I)));
   end loop;

exception
   when Constraint_Error =>
      Ada.Text_IO.Put_Line("Index out of bounds");
end Example_Solution;
```