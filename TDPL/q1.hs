halves :: [Int] -> [Int]
halves xs = map (`div` 2) xs

main :: IO ()
main = do
    let numbers = [10, 20, 30, 40, 50]
    print (halves numbers)