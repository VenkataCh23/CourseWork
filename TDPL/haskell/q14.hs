josephus :: Int -> Int
josephus 1 = 1
josephus n = (josephus (n - 1) + 1) `mod` n + 1

main :: IO ()
main = do
    putStrLn "Enter the number of people standing in the circle:"
    input <- getLine
    let n = read input :: Int
    putStrLn ("The person who survives is: " ++ show (josephus n))
