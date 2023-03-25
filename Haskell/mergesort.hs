-- haskell function for implementing mergesort

merge :: (Ord a) => [a] -> [a] -> [a]
merge [] [] = []
merge l1 [] = l1
merge [] l2 = l2
merge (x:xs) (y:ys)
 | x < y = x:merge xs (y:ys)
 | otherwise = y:merge (x:xs) ys

divide' :: [a] -> ([a],[a])
divide' l = (take lhx l, drop lhx l)
 where lhx = length l `div` 2

msort :: (Ord a) => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort left) (msort right)
 where (left, right) = divide' xs