module H99.ListsContinued.P17 where

--(*) Split a list into two parts; the length of the first part is given. Do not use any predefined predicates.

split :: [a] -> Int -> ([a],[a])
split xs 0 = ([], xs)
split (x:xs) n = go x (split xs (n-1))
    where go x (fst, snd) = (x:fst, snd)
split [] _ = ([], [])