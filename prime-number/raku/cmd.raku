my $primeNumberCount = 100;
if (@*ARGS.elems == 1) {
    $primeNumberCount = +@*ARGS[0];
}

my $number = 0;
while ($primeNumberCount > 0) {
    $number++;

    my $j = 0;
    for 1 .. $number -> $i {
        if ($number % $i == 0) {
            $j++;
        }
    }

    if ($j == 2) {
        $primeNumberCount--;
    }
}

print "The latest prime number: $number\n";
