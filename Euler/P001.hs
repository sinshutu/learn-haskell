main :: IO()
main = do
    let result = addAll $ selectNums [1..999]
    print $ result
    print $ result == 233168


addAll :: [Int] -> Int
addAll [] = 0
addAll (x:xs) = x + addAll xs

selectNums :: [Int] -> [Int]
selectNums n = filter (\x -> mod x 3 == 0 || mod x 5 == 0 ) n
