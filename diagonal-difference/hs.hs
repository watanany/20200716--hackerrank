{-# LANGUAGE Strict #-}

module Main where


import Control.Monad (forM)


{-
main :: IO ()
main = do
  count <- readLn :: IO Int
  arr <- forM [0..(count - 1)] $ \_ -> do
    line <- getLine
    return $ map read $ words line :: IO [Int]
  print $ diagonalDifference arr
-}


-- version not using `do` expression
main :: IO ()
main =
  (readLn :: IO Int) >>=
    \count ->
      (forM [0..(count - 1)] $ \_ ->
        getLine >>=
          \line ->
            return $ map read $ words line :: IO [Int]) >>=
        \arr ->
          print $ diagonalDifference arr


diagonalDifference :: [[Int]] -> Int
diagonalDifference arr = abs $ (sum a) - (sum b)
  where
    n = length arr
    a = [arr !! i !! i | i <- [0..(n - 1)]]
    b = [arr !! i !! (n - i - 1) | i <- [0..(n - 1)]]
