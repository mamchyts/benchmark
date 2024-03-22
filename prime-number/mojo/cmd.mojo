from sys import argv

fn main() raises:
    var primeNumberCount : Int = atol(argv()[1]) if len(argv()) > 1 else 100

    var number : Int = 0
    while (primeNumberCount > 0):
        number += 1
        var j : Int = 0

        for i in range(1, number + 1):
            if (number % i == 0):
                j += 1

        if (j == 2):
            primeNumberCount -= 1

    print ('The latest prime number:', number)
