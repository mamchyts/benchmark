import System.Environment (getArgs)
import Data.List (findIndex)

firstOrDefault :: [String] -> Int -> Int
firstOrDefault args defaultValue =
    if length args == 1
        then read (head args)
        else defaultValue

isPrime :: Int -> Bool
isPrime n = (sum [ if (n `rem` i == 0) then 1 else 0 | i <- [1..n] ]) == 2

count :: Int -> Bool -> Int
count np isp
  | isp == True = np + 1
  | otherwise = np

main :: IO ()
main = do
    args <- getArgs
    let primeNumberCount = firstOrDefault args 100
    case (findIndex (\n -> n == primeNumberCount) (scanl count 1 [isPrime n | n <- [2..]])) of
      Just num -> putStrLn ("The latest prime number: " ++ (show (num + 1)))
      Nothing -> putStrLn ("Cannot find prime")
