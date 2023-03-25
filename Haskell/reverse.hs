-- haskell function to reverse a list with tail recursion

reverse' :: [a] -> [a] -> [a]
reverse' acc [] = acc
reverse' acc (x:xs) = reverse' (x:acc) xs