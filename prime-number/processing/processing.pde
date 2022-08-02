int primeNumberCount = (args != null) ? int(args[0]) : 100;

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

println("The latest prime number: ", number);
exit();
