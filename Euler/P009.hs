main :: IO()
main = do
    let result = let (a, b, c) = head . resolve $ 1000 in a * b *c
    print $ result
    print $ result == 31875000


resolve :: Int -> [(Int, Int, Int)]
-- resolve n = [(x, y, z) | x <- [1..n], y <- [2..n], z <- [3..n], x < y, y < z, (x * x) + (y * y) == z * z, x + y + z == n]
resolve n = [(x, y, z) | x <- [1..n-1], y <- [2..n-2], z <- [n - x - y], x < y, y < z, (x * x) + (y * y) == z * z, x + y + z == n]

