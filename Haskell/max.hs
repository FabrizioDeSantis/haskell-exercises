-- haskell function to calculate how many times a maximum changes in a list

skyscraper :: (Num a, Ord a) => [a] -> a
skyscraper x = countSkyscraper x []
 where
  countSkyscraper :: (Num a, Ord a) => [a] -> [a] -> a
  countSkyscraper [] acc = fromIntegral( length acc ) 
  countSkyscraper (x:xs) [] = countSkyscraper xs [x]
  countSkyscraper (x:xs) acc
   | x > (head acc) = countSkyscraper xs (x:acc)
   | otherwise =  countSkyscraper xs acc