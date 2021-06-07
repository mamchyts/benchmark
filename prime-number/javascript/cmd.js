var primeNumberCount = process.argv[2] ? process.argv[2] : 100;

var number = 0;
while (primeNumberCount > 0) {
    number++;
    var j = 0;

    for (i = 1; i <= number; i++) {
        if (number % i === 0) {
            j++;
        }
    }

    if (j === 2) {
        primeNumberCount--;
    }
}

console.log('The latest prime number: ' + number);
