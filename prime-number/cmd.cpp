#include <stdio.h>
#include <stdlib.h>

int main( int argc, char *argv[] )
{
    int32_t primeNumberCount = 100;
    if (argc == 2) {
        primeNumberCount = atoi(argv[1]);
    }

    int32_t number = 0;
    int32_t primeNumberCountOrigin = primeNumberCount;
    while (primeNumberCount > 0) {
        ++number;

        int32_t j = 0;
        int32_t dividers[primeNumberCountOrigin];

        for (int32_t i = 1; i <= number; ++i) {
            if (number % i == 0) {
                dividers[j] = i;
                ++j;
            }
        }

        if (j == 2) {
            --primeNumberCount;
        }
    }

    printf("The latest prime number: %d\n", number);
}
