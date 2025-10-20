factors :: Int -> [Int]
factors n = [x | x <- [2..n-1], n `mod` x == 0]

main :: IO ()
main = do
    putStrLn "Enter a number:"
    input <- getLine
    let n = read input :: Int
    print (factors n)
