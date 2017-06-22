main :: IO()
main = print $ factrial 5

factrial :: Int -> Int
factrial 0 = 1
factrial n = n * factrial(n-1)
