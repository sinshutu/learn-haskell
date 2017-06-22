main :: IO()
main = print $ fn 1

fn :: Int -> Int
fn n = let x = n + 1
           y = n + 2
           in x * y
