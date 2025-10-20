merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

mergeSort :: Ord a => [a] -> [a]
mergeSort [] = []        -- An empty list is already sorted
mergeSort [x] = [x]      -- A singleton list is already sorted
mergeSort xs = merge (mergeSort left) (mergeSort right)
  where
    half = length xs `div` 2
    (left, right) = splitAt half xs

main :: IO ()
main = do
    putStrLn "Enter the elements of the list to be sorted (space-separated):"
    listInput <- getLine
    let list = map read (words listInput) :: [Int]
    
    print (mergeSort list)
