--(*) Reverse a list.

-- Prelude implementations:
myReverse :: String -> String 
myReverse = reverse

myReverse' :: String -> String 
myReverse' = foldl (flip (:)) []

-- Actual custom implementation:
myReverse'' :: String -> String 
myReverse'' [] = []
myReverse'' (x:xs) = myReverse'' xs ++ [x]