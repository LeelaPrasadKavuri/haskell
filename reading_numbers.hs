import Data.Char  
  
main = do  
       putStrLn "enter values "
       contents <- getLine  
       let a=map (read::String->Int) $ words contents
       print a
