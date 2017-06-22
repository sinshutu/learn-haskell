main :: IO ()
main = do
    h1
    h2

-- printだと文字化ける
h1 = print "Hello World あ"
h2 = do
    let str = "Hello World あ"
    putStrLn $ str

