fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main :: IO ()
main = do
    putStrLn "Enter the value of n:"
    input <- getLine
    let n = read input :: Int
    print (fibonacci n)