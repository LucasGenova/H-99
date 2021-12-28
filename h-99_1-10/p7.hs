--(**) Flatten a nested list structure. Transform a list, possibly holding lists as elements into a 'flat' list by replacing each list with its elements (recursively).

--Since lists in Haskell are homogeneous, it's necessary to create a new data type:
data NestedLists a = Elem a | List [NestedLists a]

--Function to flatten the 'NestedLists' data type:
flatten :: NestedLists a -> [a]
flatten (Elem x) = [x]
flatten (List []) = []
flatten (List (x:xs)) = flatten x ++ flatten (List xs)