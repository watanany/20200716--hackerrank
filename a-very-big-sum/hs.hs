{-# LANGUAGE Strict #-}

module Main where

{-
main :: IO ()
main = do
  _ <- readLn :: IO Integer
  line <- getLine
  let ar = map read $ words line :: [Integer]
  print $ aVeryBigSum ar
-}


-- version not using `do` expression
main :: IO ()
main =
  (readLn :: IO Integer) >>
    getLine >>=
      \line ->
        (\ar -> print $ aVeryBigSum ar) $ (map read $ words line :: [Integer])


-- version not using sum
aVeryBigSum :: [Integer] -> Integer
aVeryBigSum ar = f ar 0
  where
    f (x:[]) acc = x + acc
    f (x:xs) acc = f xs (x + acc)
