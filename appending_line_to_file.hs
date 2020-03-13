import System.IO 
main =do
    todoItem <- getLine
    appendFile "leela1.txt" (todoItem ++ "\n")
