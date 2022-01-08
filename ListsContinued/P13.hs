module H99.ListsContinued.P13 where
import H99.ListsContinued.P11 (Encodings(..))

encodeDirect :: Eq a => [a] -> [Encodings a]
encodeDirect [] = []
encodeDirect [x] = [Single x]
encodeDirect (x:xs) = go x (encodeDirect xs)
    where 
        go x [] = [Single x]
        go x (en@(Single e):ens) = if x == e then Multiple 2 x:ens else Single x:en:ens 
        go x (en@(Multiple num e):ens) = if x == e then Multiple (num+1) x:ens else Single x:en:ens
        