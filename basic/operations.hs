main = do
    putStrLn "加算"
    print (1 + 2)
    print ((+) 1 2)
    putStrLn "減算"
    print (1 - 2)
    print ((-) 1 2)
    putStrLn "乗算"
    print (1 * 2)
    print ((*) 1 2)
    putStrLn "除算"
    print (1 / 2)
    print ((/) 1 2)
    putStrLn "あまり"
    print (1 `mod` 2)
    print (mod 1 2)
