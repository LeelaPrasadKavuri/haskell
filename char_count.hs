main =interact charcount
    where charcount input = show(sum $ map (length)$ (words input ))++"\n"
