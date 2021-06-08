local primeNumberCount = 100;
if #arg == 1 then
    primeNumberCount = tonumber(arg[1]);
end

local number = 0;
while primeNumberCount > 0 do
    number = number + 1

    local j = 0;
    for i = 1, number do
        if number % i == 0 then
            j = j + 1;
        end
    end

    if j == 2 then
        primeNumberCount = primeNumberCount - 1;
    end
end

print('The latest prime number: ', number);
