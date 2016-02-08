factorize x d
    | x == 1 = []
    | x `mod` d == 0 = d : factorize (x `div` d) d
    | otherwise = factorize x (d+1)

main = print $ last $ factorize 600851475143 2
