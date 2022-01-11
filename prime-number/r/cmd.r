args = commandArgs(trailingOnly=TRUE)

primeNumberCount = 100;
if (length(args) == 1) {
    primeNumberCount = as.numeric(args[1]);
}

number = 0;
while (primeNumberCount > 0) {
    number = number + 1;

    j = 0;
    for (i in 1:number) {
        if (number %% i == 0) {
            j = j + 1;
        }
    }

    if (j == 2) {
        primeNumberCount = primeNumberCount - 1;
    }
}

paste('The latest prime number: ', number);
cat("\n")
