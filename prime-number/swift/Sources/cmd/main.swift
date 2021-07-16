var primeNumberCount = 100;
if (CommandLine.arguments.count == 2) {
    primeNumberCount = Int(CommandLine.arguments[1]) ?? 100;
}

var number = 0;
while (primeNumberCount > 0) {
    number += 1;

    var j = 0;
    for i in 1...number {
        if (number % i == 0) {
            j += 1;
        }
    }

    if (j == 2) {
        primeNumberCount -= 1;
    }
}

print("The latest prime number: \(number)\n");
