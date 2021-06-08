with Ada.Text_IO, Ada.Command_Line;

procedure cmd is
    primeNumberCount : Integer := 100;
    j, number: Integer;
begin
    if Ada.Command_Line.Argument_Count = 1 then
        primeNumberCount := Integer'Value(Ada.Command_Line.Argument(1));
    end if;


    number := 0;
    while primeNumberCount > 0 loop
        number := number + 1;

        j := 0;
        for i in 1 .. number loop
            if number mod i = 0 then
                j := j + 1;
            end if;
        end loop;

        if j = 2 then
            primeNumberCount := primeNumberCount - 1;
        end if;
    end loop;

    Ada.Text_IO.Put_Line("The latest prime number: " & Integer'Image(number));
end cmd;

