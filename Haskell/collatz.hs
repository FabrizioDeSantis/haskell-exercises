-- haskell function to calculate how many collatz chains have a length greather than 15

collatz :: (Integral a) => a -> [a]
collatz 1 = [1]
collatz n
 | even n = n:collatz(n `div` 2)
 | odd n = n:collatz(n*3+1)

countCollatz :: Int
countCollatz = length (filter greatherThan15 (map (collatz) [1..100]))
 where greatherThan15 list = length list > 15