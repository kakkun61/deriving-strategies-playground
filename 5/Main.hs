{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE MultiParamTypeClasses #-}

module Main where

class C a b where

data T a = MkT a deriving (C Int)

-- instance C Int (T a)

main :: IO ()
main = undefined
