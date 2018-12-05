{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DerivingStrategies #-}

module Main where

newtype S = MkS Int deriving {- newtype -} Show

sOne :: String
sOne = show (MkS 1)

main :: IO ()
main = putStrLn sOne -- ==> MkS 1
                     -- ==> 1 (newtype)
