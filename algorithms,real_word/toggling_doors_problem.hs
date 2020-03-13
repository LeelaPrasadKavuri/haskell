{- There are 100 doors in a row that are all initially closed.
You make 100 passes by the doors.
The first time through, visit every door and  toggle  the door  (if the door is closed,  open it;   if it is open,  close it).
The second time, only visit every 2nd door   (door #2, #4, #6, ...),   and toggle it.
The third time, visit every 3rd door   (door #3, #6, #9, ...), etc,   until you only visit the 100th door.

 Task
Answer the question:   what state are the doors in after the last pass?   Which are open, which are closed? -}

data Door = Open | Closed deriving (Show,Eq)

toggle :: Door -> Door
toggle Open = Closed
toggle Closed= Open

toggleEvery :: Int -> [Door] -> [Door]
toggleEvery  k = zipWith toggleK [1..]
 where toggleK n door
	| n `mod` k ==0 = toggle door
	|otherwise = door



run :: Int -> [Door]
run n =foldr toggleEvery (replicate n Closed ) [1..n]

main::IO()
main = print $ filter ((== Open) .snd ) $ zip [1..] (run 100)










