module H99.ListsContinued.P19 where

--(**) Rotate a list N places to the left.
-- Hint: Use the predefined functions length and (++).

rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate xs n = snd ++ fst
    where (fst, snd) = splitAt (mod n (length xs)) xs