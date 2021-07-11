primeNumberCount = if length(System.argv) == 1, do: String.to_integer(List.first(System.argv)), else: 100

defmodule PrimeNumber do
    def getNumber(primeNumberCount, number) when primeNumberCount == 0 do
        IO.puts("The latest prime number: #{number}")
    end

    def getNumber(primeNumberCount, number) do
        number = number + 1;
        j = getJ(number, 1, 0)

        if j == 2 do
            getNumber(primeNumberCount - 1, number)
        else
            getNumber(primeNumberCount, number)
        end
    end

    defp getJ(number, i, j) do
        if i > number do
            j
        else
            if rem(number, i) == 0 do
                getJ(number, i + 1, j + 1)
            else
                getJ(number, i + 1, j)
            end
        end
    end
end

PrimeNumber.getNumber(primeNumberCount, 0)
