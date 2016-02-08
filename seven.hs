isPrimeX :: Int -> Int -> Bool
isPrimeX n x
    | n `mod ` x == 0 = False
    | x > floor (sqrt (fromIntegral n)) = True
    | otherwise = isPrimeX n (x+1)

isPrime n = isPrimeX n 2

nthPrime n from
    | n == 1 && (isPrime from) = from
    | isPrime from = nthPrime (n-1) (from+1)
    | otherwise = nthPrime n (from+1)

main = print $ nthPrime 10001 1
