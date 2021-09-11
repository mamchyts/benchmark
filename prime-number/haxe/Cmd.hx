class Cmd {
    static public function main():Void {
        var primeNumberCount = 100;
        if (Sys.args().length == 1) {
            primeNumberCount = Std.parseInt(Sys.args()[0]);
        }

        var number = 0;
        while (primeNumberCount > 0) {
            number++;

            var j = 0;
            for (i in 1...(number + 1)) {
                if (number % i == 0) {
                    j++;
                }
            }

            if (j == 2) {
                primeNumberCount--;
            }
        }

        Sys.println("The latest prime number: " + number + "\n");
    }
}
