import System.Environment (getArgs)

firstOrDefault args defaultValue =
    if length args == 1
        then read (head args)
        else defaultValue

getJ j i number =
    if i > number
        then j
        else if number `rem` i == 0
                then getJ (j + 1) (i + 1) number
                else getJ j (i + 1) number

getNumber primeNumberCount number =
    if primeNumberCount == 0
        then number
        else do
            let numberInc = number + 1
            let j = getJ 0 1 numberInc
            if j == 2
                then getNumber (primeNumberCount - 1) numberInc
                else getNumber primeNumberCount numberInc

main = do
    args <- getArgs
    let primeNumberCount = firstOrDefault args 100

    let number = getNumber primeNumberCount 0
    putStrLn ("The latest prime number: " ++ (show number))
