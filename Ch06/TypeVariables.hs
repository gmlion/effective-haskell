{-# LANGUAGE ScopedTypeVariables #-}

module TypeVariables where

adheresToReadShowContract :: forall a. (Read a, Show a) => a -> Bool
adheresToReadShowContract val =
  let a = show . read @a . show $ val
      b = show val
   in a == b

-- here we can do convertViaInt @Int 100, specifing only the b type variable
convertViaInt :: forall {a} b. (Integral a, Num b) => a -> b
convertViaInt = fromIntegral . fromIntegral @_ @Int