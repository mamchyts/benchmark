primeNumberCount = length(ARGS) == 1 ? parse(Int64, ARGS[1]) : 100

number = 0
while primeNumberCount > 0
    global number += 1
    j = 0

    for i in 1:number + 1
        if number % i == 0
            j += 1
        end
    end

    if j == 2
        global primeNumberCount -= 1
    end
end

println("The latest prime number: $number")
