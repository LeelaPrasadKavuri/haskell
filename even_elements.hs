eve :: [Int] -> [Int]
eve [] =[]
eve (x:xs)
 | iseven x = x:(eve xs)
 | otherwise = eve xs
  where
    iseven :: Int -> Bool
    iseven t =(mod x 2) == 0
