primeNumberCount = ARGV[0] ? ARGV[0].to_i : 100;

number = 0;

while primeNumberCount > 0  do
    number += 1;
    j = 0;

    for i in 0..number do
        i += 1;

        if number % i == 0
            j += 1;
        end
    end

    if j == 2
        primeNumberCount -= 1;
    end
end

puts "The latest prime number: #{number}";
