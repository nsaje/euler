import Data.List

divisible 1 _ = True
divisible n x
    | x `mod` n == 0 = divisible (n-1) x
    | otherwise = False

main = print $ find (divisible 20) [20*i | i<-[1..]]
