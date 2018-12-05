{-# LANGUAGE DeriveAnyClass #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE StandaloneDeriving #-}

module Main where

class C a where
  c :: a -> String
  c _ = "default"

newtype T a = T a
  deriving          Show -- https://ghc.haskell.org/trac/ghc/wiki/Commentary/Compiler/DerivingStrategies#Thederivingstrategyresolutionalgorithm
  deriving stock    (Eq, Foldable)
  deriving newtype  Ord
  deriving anyclass C

deriving stock instance Functor T

main :: IO ()
main = putStrLn $ show $ T 1
