module H99.ListsAgain.P21 where

--Insert an element at a given position into a list.

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs n = take (n-1) xs ++ x : drop (n-1) xs