--(**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

pack :: Eq a => [a] -> [[a]]
pack [] = [[]]
pack [x] = [[x]]
pack (x:xs) = if x == z then (x:ys):yss else [x]:(ys:yss)
    where (ys@(z:zs):yss) = pack xs