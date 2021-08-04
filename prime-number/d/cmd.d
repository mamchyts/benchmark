import std.conv;
import std.stdio;

void main(string[] argv)
{
    int primeNumberCount = 100;
    if (argv.length == 2) {
        primeNumberCount = to!int(argv[1]);
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

    writefln("The latest prime number: %s\n", number);
}
