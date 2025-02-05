```ada
function Check_Range(Num : Integer) return Boolean is
begin
  if Num < 10 or Num > 100 then
    return False;
  else
    return True;
  end if;
end Check_Range;

procedure Main is
   Input_Num : Integer;
   Valid_Input : Boolean := False;
begin
  Put_Line("Enter a number between 10 and 100:");
  while not Valid_Input loop
    begin
      Get(Input_Num);
      Valid_Input := True;
    exception
      when Data_Error =>
        Put_Line("Invalid input. Please enter an integer.");
        Valid_Input := False;
    end;
  end loop;
  if Check_Range(Input_Num) then
    Put_Line("Number is within range");
  else
    Put_Line("Number is out of range");
  end if;
end Main;
```