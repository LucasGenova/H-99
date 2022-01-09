module H99.ListsAgain.P22 where

-- Create a list containing all integers within a given range.

range :: Int -> Int -> [Int]
range beg end
    |beg > end = []
    |otherwise = beg : range (beg+1) end