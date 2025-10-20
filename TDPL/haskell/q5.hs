pivot :: Ord a => a -> [a] -> ([a], [a])
pivot val lst = (filter (<= val) lst, filter (> val) lst)

main :: IO ()
main = do
    putStrLn "Enter the pivot value:"
    pivotInput <- getLine
    let pivotVal = read pivotInput :: Int
    
    putStrLn "Enter the list of elements (space-separated):"
    listInput <- getLine
    let elements = map read (words listInput) :: [Int]
    
    print (pivot pivotVal elements)

