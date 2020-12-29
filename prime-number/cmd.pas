program primeNumber;
uses SysUtils;

var
    j, i, primeNumberCount, number: longint;

begin
    if (ParamStr(1) > '') then
        primeNumberCount := StrToInt(ParamStr(1))
    else
        primeNumberCount := 100;

    number := 0;
    while primeNumberCount > 0 do
    begin
        inc(number);

        j := 0;
        for i := 1 to number do
        begin
            if (number mod i = 0) then
                inc(j);
        end;

        if (j = 2) then
            dec(primeNumberCount);
    end;

    writeln('The latest prime number: ', number);
end.
