merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

main :: IO ()
main = do
    putStrLn "Enter the elements of list 1 (space-separated):"
    list1Input <- getLine
    let list1 = map read (words list1Input) :: [Int]
    
    putStrLn "Enter the elements of list 2 (space-separated):"
    list2Input <- getLine
    let list2 = map read (words list2Input) :: [Int]
    
    print (merge list1 list2)
