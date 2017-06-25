main :: IO()
main = do
    let result = maximum $ primes 600851475143
    print $ result
    print $ result == 6857

prime :: Int -> Int
prime n = [x | x <- [1..n], mod n x == 0] !! 1

primes :: Int -> [Int]
primes 1 = []
primes n = f : primes (div n f)
    where
        f = prime n
