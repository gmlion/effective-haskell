{-# LANGUAGE DefaultSignatures #-}

module Redacted where

class Redacted a where
  redacted :: a -> String
  default redacted :: (Show a) => a -> String
  redacted = show

newtype Username = Username String

--  deriving (Show)

instance Show Username where
  show (Username username) = username

instance Redacted Username

newtype Password = Password String

instance Redacted Password where
  redacted (Password password) = "********"

-----------

showLeftRight :: (Read a, Read b) => String -> Either a b
showLeftRight s
  | length s > 3 = Left $ read s
  | otherwise = Right $ read s

-----------

