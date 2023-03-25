-- haskell calculator function

calculator :: (Show a, Num a, Eq a, Fractional a) => String -> a -> a -> String
func "/" a 0 = "Error"
func "+" a b = show(a + b)
func "*" a b = show(a * b)
func "-" a b = show(a - b)
func "/" a b = show(a / b)
func _ a b = "Operation not supported"