module Ch01 where

g:: Int -> Int
--g n = n + 4
--g = (+) 4

g = (4 +)

frec :: Int -> Int
--frec 0 = 0
--frec n = n + frec (n - 1)

frec n =
  case n of
    0 -> 0
    n -> n + frec (n - 1)

id' :: p -> p
--id' x = x

id' x = undefined

s :: Int -> Int
s n = undefined

