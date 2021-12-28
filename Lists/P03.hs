module H99.Lists.P03 where

--(*) Find the K'th element of a list. The first element in the list is number 1.

elementAt :: (Num b, Ord b) => [a] -> b -> a
elementAt [] _ = error "no elements on empty list!"
elementAt (x:xs) idx
    | idx < 1 = error "invalid index!"
    | idx == 1 = x
    | otherwise = elementAt xs (idx-1)