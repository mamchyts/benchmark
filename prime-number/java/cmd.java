class cmd {
    public static void main(String args[]) {
        int primeNumberCount = (args.length == 1) ? Integer.parseInt(args[0]) : 100;

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

        System.out.println("The latest prime number: " + Integer.toString(number));
    }
}




// <?php

// $primeNumberCount = isset($argv[1]) ? $argv[1] : 100;

// $number = 0;
// while ($primeNumberCount > 0) {
//     ++$number;
//     $j = 0;

//     for ($i = 1; $i <= $number; ++$i) {
//         if ($number % $i === 0) {
//             ++$j;
//         }
//     }

//     if ($j === 2) {
//         --$primeNumberCount;
//     }
// }

// echo 'The latest prime number: ' . $number . PHP_EOL;
