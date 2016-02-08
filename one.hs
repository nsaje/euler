predikat x
    | x `mod` 5 == 0 = True
    | x `mod` 3 == 0 = True
    | otherwise = False
main = print $ sum $ filter predikat [1..999]
