primeNumberCount = ARGV.size == 1 ? ARGV[0].to_i : 100

number = 0

while primeNumberCount > 0
    number += 1
    j = 0

    i = 0
    while i < number
        i += 1

        if number % i == 0
            j += 1
        end
    end

    if j == 2
        primeNumberCount -= 1
    end
end

puts "The latest prime number: #{number}";
