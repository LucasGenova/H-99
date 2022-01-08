module H99.ListsContinued.P14 where

--(*) Duplicate the elements of a list.

dupli :: [a] -> [a]
dupli (x:xs) = [x,x] ++ dupli xs
dupli x = x