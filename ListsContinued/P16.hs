module H99.ListsContinued.P16 where

--(**) Drop every N'th element from a list.

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery as n = take (n-1) as ++ dropEvery (drop n as) n