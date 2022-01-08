module H99.Lists.P08 where

--(**) Eliminate consecutive duplicates of list elements. If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

compress :: (Eq a) => [a] -> [a]
compress (x:xs@(y:ys)) = if x == y then compress xs else x:compress xs
compress x = x