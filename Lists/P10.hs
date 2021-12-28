module H99.Lists.P10 where
import H99.Lists.P09 (pack)

--(*)Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

encode :: (Eq a) =>[a] -> [(Int, a)]
encode cs = zip (map length (pack cs)) (map head (pack cs))