import sys

primeNumberCount = int(sys.argv[1]) if (len(sys.argv) > 1) else 100

number = 0
while (primeNumberCount > 0):
    number += 1
    dividers = []

    for i in range(1, number + 1):
        if (number % i == 0):
            dividers.append(i)

    if (len(dividers) == 2):
        primeNumberCount -= 1

print ('The latest prime number: ', number)
