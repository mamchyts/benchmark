package main

import (
    "fmt"
    "os"
    "strconv"
)

func main() {
    primeNumberCount := 100;
    if len(os.Args) > 1 {
        i, err := strconv.Atoi(os.Args[1])
        if err != nil {
            panic(err)
        } else {
            primeNumberCount = i
        }
    }

    number := 0
    for primeNumberCount > 0 {
        number++
        j := 0

        for i:=1; i <= number; i++ {
            if number % i == 0 {
                j++
            }
        }

        if j == 2 {
            primeNumberCount--
        }

    }

    fmt.Printf("The latest prime number: %d\n", number)
}
