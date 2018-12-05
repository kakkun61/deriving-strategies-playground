{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DefaultSignatures #-}

module Main where

import Prelude hiding (Maybe (..))

class HigherEq f where
  (==#) :: {-Eq a =>-} f a -> f a -> Bool
  default (==#) :: Eq (f a) => f a -> f a -> Bool
  (==#) = (==)

data Maybe a = Nothing | Just a deriving HigherEq

instance Eq a => Eq (Maybe a) where
  Nothing == Nothing = True
  Just a == Just b = a == b
  _ == _ = False

main :: IO ()
main = undefined
