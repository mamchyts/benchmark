<?php

$primeNumberCount = $argv[1] ?? 100;

$number = 0;
while ($primeNumberCount > 0) {
    ++$number;
    $dividers = [];

    for ($i = 1; $i <= $number; ++$i) {
        if ($number % $i === 0) {
            $dividers[] = $i;
        }
    }

    if (count($dividers) === 2) {
        --$primeNumberCount;
    }
}

echo 'The latest prime number: ' . $number . PHP_EOL;
