module H99.ListsContinued.P11 (encodeModified, Encodings (..)) where
import Data.List ( group )

--(*) Modified run-length encoding. Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

--Like in problem 7, it's necessary to create a new data structure, since lists in Haskell are homogeneous:
data Encodings a = Multiple Int a | Single a

encodeModified :: Eq a => [a] -> [Encodings a]
encodeModified xs = [if length x == 1 then Single (head x) else Multiple (length x) (head x)| x <- group xs]

showEncoding :: Show a => Encodings a -> String
showEncoding (Single a) = "Single " ++ show a
showEncoding (Multiple int a) = "Multiple " ++ show int ++ " " ++ show a

instance Show a => Show (Encodings a) where
    show = showEncoding