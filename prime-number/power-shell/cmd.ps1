$primeNumberCount = 100
if ($args.count -eq 1) {
    $primeNumberCount = $args[0] -as [int]
}

$number = 0
while ($primeNumberCount -gt 0) {
    $number++

    $j = 0
    for ($i = 1; $i -le $number; $i++) {
        if ($number % $i -eq 0) {
            $j++
        }
    }

    if ($j -eq 2) {
        $primeNumberCount--
    }
}

Write-Output "The latest prime number: $($number)"
