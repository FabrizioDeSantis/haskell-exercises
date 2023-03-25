-- haskell function to calculate the sum of odd squares less than 10000

oddsquares :: (Integral a) => a
oddsquares = sum (takeWhile(<10000) (filter odd (map (^2) [1..])))