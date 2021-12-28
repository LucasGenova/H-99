module H99.Lists.P04 where

--(*) Find the number of elements of a list.

myLength :: (Num b) => [a] -> b
myLength [] = 0
myLength (x:xs) = 1 + myLength xs