module H99.ListsContinued.P13 where
import H99.ListsContinued.P11 (Encodings(..))

-- (**) Run-length encoding of a list (direct solution).Implement the so-called run-length encoding data compression method directly. I.e. don't explicitly create the sublists containing the duplicates, as in problem 9, but only count them. As in problem P11, simplify the result list by replacing the singleton lists (1 X) by X.

encodeDirect :: Eq a => [a] -> [Encodings a]
encodeDirect [] = []
encodeDirect [x] = [Single x]
encodeDirect (x:xs) = go x (encodeDirect xs)
    where 
        go x [] = [Single x]
        go x (en@(Single e):ens) = if x == e then Multiple 2 x:ens else Single x:en:ens 
        go x (en@(Multiple num e):ens) = if x == e then Multiple (num+1) x:ens else Single x:en:ens
        