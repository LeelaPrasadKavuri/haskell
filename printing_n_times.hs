f 0 =return ()
f 1 = putStrLn "Hello World"
f n = do
        putStrLn "Hello World" 
        f (n - 1)

main :: IO()
main = do
   n <- readLn :: IO Int
   f n



