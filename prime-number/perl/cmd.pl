my $primeNumberCount = 100;
if (scalar(@ARGV) == 1) {
    $primeNumberCount = int(@ARGV[0]);
}

my $number = 0;
while ($primeNumberCount > 0) {
    $number++;

    my $j = 0;
    for (my $i = 1; $i <= $number; $i++){
        if ($number % $i == 0) {
            $j++;
        }
    }

    if ($j == 2) {
        $primeNumberCount--;
    }
}

print "The latest prime number: $number\n";
