main :: IO()
main = do
    let result = primes !! 10000
    print $ result
    print $ result == 104743

-- primes :: [Int]
-- primes = f [2..]
--     where
--         f (x:xs) = isPrime
--
-- isPrime :: [Int] -> Int -> Bool
-- isPrime ps x = and [mod x p /= 0 | p <- ps]

primes :: [Int]
primes = 2:f [3,5..] where f (x:xs) = x:f [y | y <- xs, mod y x /= 0]
