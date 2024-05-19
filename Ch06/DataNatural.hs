module DataNatural where

unique::(a -> a -> Bool) -> [a] -> [a]
unique _ [] = []
unique equalityFn (x:xs) =
  let
    f' a = not . equalityFn a
    filtered = filter (f' x) xs
  in x : unique equalityFn filtered
    

areEqual a b = a == b
areNotEqual' a = not . areEqual a

-- To define a set of related function you can use a record
data Natural a = Natural
  { equal     :: a -> a -> Bool
  , add       :: a -> a -> a
  , multiply  :: a -> a -> a
  , additiveIdentity :: a
  , multiplicativeIdentity :: a
  , displayAsString :: a -> String
  }

intNatural = Natural
  { equal = (==)
  , add = (+)
  , multiply = (*)
  , additiveIdentity = 0
  , multiplicativeIdentity = 1
  , displayAsString = show
  }

-- We can use the above data type in unique

uniqueR :: Natural a -> [a] -> [a]
uniqueR _ [] = []
uniqueR n (x:xs) =
  x : uniqueR n filtered
  where
    f' a = not . (equal n) a
    filtered = filter (f' x) xs
  
  