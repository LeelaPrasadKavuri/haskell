f arr =sum([x | x <- arr, odd x])
main = do
	inputdata <- getContents
	print $ f . map read  $ lines inputdata
