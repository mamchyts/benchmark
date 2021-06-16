let primeNumberCount = process.argv[2] || 100;
let number = 0;

while (primeNumberCount > 0) {
    number++;
    let j = 0;

    for (let i = 1; i <= number; i++) {
        if (number % i === 0) {
            j++;
        }
    }

    if (j === 2) {
        primeNumberCount--;
    }
}

console.log('The latest prime number: ' + number);
