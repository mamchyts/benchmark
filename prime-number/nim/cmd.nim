import os
import strutils

var primeNumberCount = 100
if paramCount() == 1:
    var primeNumberCountString = paramStr(1)
    primeNumberCount = parseInt(primeNumberCountString)

var number = 0
while primeNumberCount > 0:
    inc(number)
    var j = 0

    for i in countup(1, number):
        if number mod i == 0:
            inc(j)

    if j == 2:
        dec(primeNumberCount)

echo "The latest prime number: ", number
