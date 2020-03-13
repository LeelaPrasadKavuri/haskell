f :: Int -> [Int] -> [Int]
f n arr = filter (<n ) arr
main = do 
    n <- readLn
    inputdata <- getContents 
    let numbers = map read . words $ inputdata
    putStrLn . unlines $ (map show . f n) numbers
