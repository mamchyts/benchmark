fun main(args : Array<String>) {
    var primeNumberCount = if (args.size == 1) args[0].toInt() else 100;

    var number = 0;
    while (primeNumberCount > 0) {
        number++;
        var j = 0;

        for (i in 1..number) {
            if (number % i == 0) {
                j++;
            }
        }

        if (j == 2) {
            primeNumberCount--;
        }
    }

    println("The latest prime number: " + number.toString());
}
