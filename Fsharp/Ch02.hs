{-# LANGUAGE ViewPatterns #-}

f :: Int -> Bool
f n = not (n `mod` 5 == 0) && ((n `mod` 2 == 0) || (n `mod` 3 == 0))

{-
Hello hello
-}

--fac 0 = 1
--fac (n+1) = (n+1) * fac n



fac :: Int -> Int
fac 0 = 1
fac (subtract 1 -> n) = (n + 1) * fac n