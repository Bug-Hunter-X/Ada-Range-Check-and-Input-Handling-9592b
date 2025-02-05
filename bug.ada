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
begin
  Put_Line("Enter a number between 10 and 100:");
  Get(Input_Num);
  if Check_Range(Input_Num) then
    Put_Line("Number is within range");
  else
    Put_Line("Number is out of range");
  end if;
end Main;
```