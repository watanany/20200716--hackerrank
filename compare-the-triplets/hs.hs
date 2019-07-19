main :: IO ()
main = do
  a <- getLine >>= (return . words) >>= (return . (map read)) :: IO [Int]
  b <- getLine >>= (return . words) >>= (return . (map read)) :: IO [Int]
  let c = zip a b
  let alice = length $ filter id [i > j | (i, j) <- c]
  let bob = length $ filter id [i < j | (i, j) <- c]
  putStrLn $ (show alice) ++ " " ++ (show bob)
