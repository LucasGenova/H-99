module H99.ListsContinued.P12 where
import H99.ListsContinued.P11 (Encodings (..))

--(**) Decode a run-length encoded list. Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

decodeModified :: [Encodings a] -> [a]
decodeModified ((Multiple n a):es) = replicate n a ++ decodeModified es
decodeModified ((Single a): es) = a : decodeModified es
decodeModified _ = []