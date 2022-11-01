-- Imports
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Increment_By;

-- Start the Funtoin
procedure Main is
   -- var declor
   i : Integer := 1;
   N : Integer;
   m : Integer;
   A, B, C : Integer;
begin
   --= Using a sub program =--
   C := Increment_By;
   -- ^ Parameterless call,
   -- value of I is 0
   -- and Incr is 1

   Put_Line ("Using defaults for Increment_By is " & Integer'Image (C));

   A := 10;
   B := 3;
   C := Increment_By (A, B);
   -- ^ Regular parameter passing

   Put_Line
     ("Increment of " & Integer'Image (A) & " with " & Integer'Image (B) &
      " is " & Integer'Image (C));

   A := 20;
   B := 5;
   C := Increment_By (I => A, Incr => B);
   -- ^ Named parameter passing

   Put_Line
     ("Increment of " & Integer'Image (A) & " with " & Integer'Image (B) &
      " is " & Integer'Image (C));

   -- Print "Hello, World!" to the screen
   Ada.Text_IO.Put_Line ("Hello, World!");
   Put_Line ("Hi Wold");

   -- Use and ifElse
   Put ("Enter an Int Val: ");
   -- Read int in
   Get (N);
   Put (N);
   --satement
   if N > 0 then
      Put_Line (" Is a positive number");
   else
      Put_Line (" Is a negative number");
   end if;

   -- For Loop
   for I in 1 .. N loop -- can not change I in runtime
      Put_Line ("Hellp, World!" & Integer'Image (I));
      -- Integer'Image(I) converts int to a string
      -- & concatemats strings
   end loop;
   Ada.Text_IO.Put_Line ("--Now go back--");
   for I in reverse 1 .. N loop -- reverse changes the directoin of I
      Put_Line ("Hellp, World!" & Integer'Image (I));
   end loop;

   -- bare loop
   loop
      Put_Line ("Hi World " & Integer'Image (i));
      exit when i = 4;
      i := i + 1;
   end loop;
   i := 1; -- i keeps its vaule from the loop

   -- While loop
   while i <= N loop
      Put_Line ("While World " & Integer'Image (i));
      i := i + 1;
   end loop;

   -- Case
   case N is
      when 1 | 2 =>
         Put_Line ("Number is 1 or 2");
      when 3 .. 5 =>
         Put_Line ("Number is between 3 and 5");
      when 6 =>
         Put_Line ("Number is 6");
      when others =>
         Put_Line ("Nope");

   end case;

   -- math?
   m := N * 2;
   Put_Line (Integer'Image (N) & " * 2 = " & Integer'Image (m));
   -- Str Input, add a place to delcare vars in runtime
   declare
      Name : String := Get_Line;
   begin
      Put_Line ("Please enter your name: ");
      declare
         Name : String := Get_Line;
      begin
         Put_Line ("Hi " & Name & "!");
      end;
   end;
   Put_Line ("Bye");
   -- If exp
   Put ("Enter a Int val: ");
   Get (N);
   Put (N);
   declare
      S : constant String :=
        (if N > 0 then " is a positive number"
         else " is not a posititve number");
   begin
      Put_Line (S);
   end;
   -- Inside For exptoins
   for I in 1 .. 10 loop
      Put_Line
        (if I mod 2 = 0 then Integer'Image (I) & " Even"
         else Integer'Image (I) & " Odd");
      Put_Line
        (case I is when 1 | 3 | 5 | 7 | 9 => Integer'Image (I) & " Odd",
           when 2 | 4 | 6 | 8 | 10 => Integer'Image (I) & " Even");
   end loop;
end Main;
