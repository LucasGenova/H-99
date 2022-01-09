module H99.ListsContinued.P20 where

--(*) Remove the K'th element from a list.

removeAt :: Int -> [a] -> (a, [a])
removeAt _ [] = error "removeAt: index too large!"
removeAt n xs = (kth, beg ++ end)
    where 
        beg = take (n-1) xs
        kth:end = drop (n-1) xs