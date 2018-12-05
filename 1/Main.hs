{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DerivingStrategies #-}

module Main where

class C a where
  c :: a -> String
  c _ = "default"

instance C Int where
  c = show

newtype T = MkT Int deriving {- newtype -} C

main :: IO ()
main = putStrLn $ c $ MkT 1 -- ==> default
                            -- ==> 1 (newtype)

{-
C:\Users\kazukiokamoto\Projects\deriving-strategies-playground\app\Main.hs:13:30: warning:
    • Both DeriveAnyClass and GeneralizedNewtypeDeriving are enabled
      Defaulting to the DeriveAnyClass strategy for instantiating C
    • In the newtype declaration for ‘T’
   |
13 | newtype T = MkT Int deriving C
   |                              ^
-}
