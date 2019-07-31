module Main where

import Data.Int (Int64)


main :: IO ()
main = do
  count <- readLn :: IO Int64
  line <- getLine
  let ar = map read $ words line :: [Int64]
  print $ aVeryBigSum ar


-- version not using sum
aVeryBigSum :: [Int64] -> Int64
aVeryBigSum ar = f ar 0
  where
    f (x:[]) acc = x + acc
    f (x:xs) acc = f xs (x + acc)
