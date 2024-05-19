module Kinds where

toCSV :: forall (t :: * -> *) (a :: *). (Foldable t, Show a) => t a -> String
toCSV = init . foldr (\x acc -> show x ++ "," ++ acc) ""

csvThings :: String
csvThings =
  let
    plainList = toCSV [1,2,3]
    nonEmptyList = toCSV $ 1 NonEmpty .:| [2,3]