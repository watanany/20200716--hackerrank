module Main where

main :: IO ()
main = do
  count <- readLn :: IO Integer
  line <- getLine
  let ar = map read $ words line :: [Integer]
  print $ aVeryBigSum ar


-- version not using sum
aVeryBigSum :: [Integer] -> Integer
aVeryBigSum ar = f ar 0
  where
    f (x:[]) acc = x + acc
    f (x:xs) acc = f xs (x + acc)
