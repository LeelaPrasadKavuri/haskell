import Data.Char

capitalize :: Char -> Char
capitalize ch
 | ('a' <= ch && ch <= 'z') =chr (ord ch + (ord 'A'- ord 'a'))
 | otherwise = ch

 
