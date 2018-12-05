{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE TypeFamilies #-}

module Main where

class Sizable a where
  type Size a
  type Size a = Int

data T a = MkT a deriving Sizable

main :: IO ()
main = undefined
