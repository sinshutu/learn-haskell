main :: IO()
main = do
    let result = maximum $ palindromeFilter $ evenLenFilter $ combin 999
    print $ result
    print $ result == 906609

combin :: Int -> [Int]
combin n = [(*) x y | x <- [1..n], y <- [1..n]]

evenLenFilter :: [Int] -> [Int]
evenLenFilter xs = [x | x <- xs, mod (length $ show x) 2 == 0]

palindromeFilter :: [Int] -> [Int]
palindromeFilter xs = [x | x <- xs, f x]
    where
        halfLen n = (length $ show n) `div` 2
        f n = (take (halfLen n) (show n)) == (take (halfLen n) (reverse $ show n))
