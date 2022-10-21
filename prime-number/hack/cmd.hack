#!/usr/bin/env hhvm
namespace Cmd;

<<__EntryPoint>>
function main(): void {
    $primeNumberCount = (int) (vec(\HH\global_get('argv') as Container<_>)[1] ?? 100);

    $number = 0;
    while ($primeNumberCount > 0) {
        $number++;
        $j = 0;

        for ($i = 1; $i <= $number; $i++) {
            if ($number % $i === 0) {
                $j++;
            }
        }

        if ($j === 2) {
            $primeNumberCount--;
        }
    }

    echo 'The latest prime number: ' . $number . \PHP_EOL;
}
