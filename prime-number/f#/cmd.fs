[<EntryPoint>]
let main args =
    let mutable primeNumberCount : int32 = if (args.Length > 0) then int args[0] else 100

    let mutable number : int32 = 0
    while (primeNumberCount > 0) do
        number <- number + 1
        let mutable j : int32 = 0

        for i = 1 to number do
            if (number % i = 0) then
                j <- j + 1

        if (j = 2) then
            primeNumberCount <- primeNumberCount - 1

    printfn "The latest prime number: %d\n" number
    0
