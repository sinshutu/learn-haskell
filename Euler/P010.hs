import Data.List                  -- based on http://stackoverflow.com/a/1140100
import qualified Data.Map as M

main :: IO()
main = do
    let result = sum $ takeWhile (< 2000000) primesMPE
    print $ result
    print $ result == 142913828922


primesMPE :: [Integer]
primesMPE = 2:mkPrimes 3 M.empty prs 9   -- postponed addition of primes into map;
    where                                -- decoupled primes loop feed
    prs = 3:mkPrimes 5 M.empty prs 9
    mkPrimes n m ps@ ~(p:pt) q = case (M.null m, M.findMin m) of
        (False, (n2, skips)) | n == n2 ->
             mkPrimes (n+2) (addSkips n (M.deleteMin m) skips) ps q
        _ -> if n<q
             then    n : mkPrimes (n+2)  m                  ps q
             else        mkPrimes (n+2) (addSkip n m (2*p)) pt (head pt^2)

    addSkip n m s = M.alter (Just . maybe [s] (s:)) (n+s) m
    addSkips = foldl' . addSkip
