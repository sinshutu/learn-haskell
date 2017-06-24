main :: IO()
main = do
    let m = 4000000
    let result = sum $ filter (\x -> mod x 2 == 0) $ fibs 0 m
    -- print $ memorized_fib 5
    -- print $ fibs 0 m
    -- print $ filter (\x -> mod x 2 == 0) $ fibs 0 m
    print $ result
    print $ result == 4613732


-- fibonacci :: [Int]
-- fibonacci = 1:1:zipWith (+) fibonacci (tail fibonacci)

fib :: Int -> Int
fib 0 = 1
fib 1 = 2
fib n = fib (n - 2) + fib (n - 1)

fibs :: Int -> Int -> [Int]
fibs x n | fib x > n = []
       | otherwise = [fib x] ++ fibs (x + 1) (n - 1)

memorized_fib :: Int -> Integer
memorized_fib = let fib' 0 = 1
                    fib' 1 = 2
                    fib' n = memorized_fib (n-2) + memorized_fib (n-1)
                in  (map fib' [0 ..] !!)
