module H99.Lists.P02 where

--(*) Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [x, _] = x
myButLast (_:y:ys) = myButLast (y:ys)
myButLast _ = error "at least two elements are needed!"
