f :: [Int]-> [Int]
f [] =[]
f (x:xs) = abs(x):f xs
main = do
	inputdata <- getContents
	mapM_ print $ f.map read  $ lines inputdata
