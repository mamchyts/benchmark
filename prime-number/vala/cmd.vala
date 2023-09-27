void main (string[] args) {
    int primeNumberCount = 100;
    if (args.length == 2) {
        primeNumberCount = int.parse (args[1]);
    }

    int number = 0;
    while (primeNumberCount > 0) {
        number++;

        int j = 0;
        for (int i = 1; i <= number; i++) {
            if (number % i == 0) {
                j++;
            }
        }

        if (j == 2) {
            primeNumberCount--;
        }
    }

    stdout.printf ("The latest prime number: %d\n", number);
}
