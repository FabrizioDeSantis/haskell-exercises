-- haskell function which returns the maximum of two values

maxOfTwo :: (Ord a) => a -> a -> a
maxOfTwo a b
 | a > b = a
 | otherwise = b