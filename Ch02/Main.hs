module FoldExamples where
import Prelude hiding (foldl, foldr, map, filter)

foldl func carry list
    | null list = carry
    | otherwise = foldl func newCarry (tail list)
        where newCarry = func carry (head list)

foldr func carry list
    | null list = carry
    | otherwise = func (head list) carry'
        where carry' = foldr func carry (tail list)

map func =
    foldr ((:) . func) []

filter func =
    foldr filter' []
    where filter' el list
            | func el = el:list
            | otherwise = list

pairs as bs =
    [(a, b) | a <- as, a `elem` bs, b <- bs, odd b]