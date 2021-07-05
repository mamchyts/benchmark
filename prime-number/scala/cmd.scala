object cmd extends App
{
    var primeNumberCount = if (args.size == 1) args(0).toInt else 100

    var number = 0
    while (primeNumberCount > 0) {
        number += 1
        var j = 0

        var i = 0
        for (i <- 1 to number) {
            if (number % i == 0) {
                j += 1
            }
        }

        if (j == 2) {
            primeNumberCount -= 1
        }
    }

    println("The latest prime number: " + number)
}
