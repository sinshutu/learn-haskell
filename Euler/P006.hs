main :: IO()
main = do
    let nums = [1..100]
    let s = sum $ map (** 2) nums
    let m = (** 2) $ sum nums
    let result = truncate (m - s)
    print $ result
    print $ result == 25164150
