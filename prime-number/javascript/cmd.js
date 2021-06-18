const isPrime = number => {
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false
    }
  }

  return number > 1
}

let primeNumberCount = process.argv[2] || 100
let number = 0

while (primeNumberCount > 0) {
  number++

  if (isPrime(number)) {
    primeNumberCount--
  }
}

console.log('The latest prime number: ' + number)
