module NewTypes where

newtype MyEither a b = MyEither {getEither :: Either a b}

type Alias = String

------

newtype Product = Product {getProduct :: Int} deriving (Show)

newtype Sum = Sum {getSum :: Int} deriving (Show)

instance Semigroup Product where
  Product x <> Product y = Product (x * y)

instance Monoid Product where
  mempty = Product 1

instance Semigroup Sum where
  Sum x <> Sum y = Sum (x + y)

instance Monoid Sum where
  mempty = Sum 0

