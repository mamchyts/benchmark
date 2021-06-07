
void main(List<String> arguments) {
    var primeNumberCount = 100;
    if (arguments.length == 1) {
        primeNumberCount = int.parse(arguments[0]);;
    }

    var number = 0;
    while(primeNumberCount > 0) {
        number++;

        var j = 0;
        for (var i = 1; i <= number; i++) {
            if (number % i == 0) {
                j++;
            }
        }

        if (j == 2) {
            primeNumberCount--;
        }
    }

    print('The latest prime number: $number');
}

