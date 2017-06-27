main :: IO()
main = do
    let result = resolve [1..20]
    print $ result
    print $ result == 232792560

resolve :: [Int] -> Int
resolve [] = 1
resolve (x:xs) = lcm' x (resolve xs)

gcd' :: Int -> Int -> Int
gcd' x y | mod y x == 0 = x
         | otherwise = gcd (mod y x) x

lcm' :: Int -> Int -> Int
lcm' x y =  x * y `div` gcd' x y
