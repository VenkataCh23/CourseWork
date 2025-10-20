sortProp :: Ord a => [a] -> Bool
sortProp [] = True
sortProp [_] = True
sortProp (x:y:xs) = x <= y && sortProp (y:xs)

main :: IO ()
main = do
    putStrLn "Enter the elements of the list to be checked (space-separated):"
    listInput <- getLine
    let list = map read (words listInput) :: [Int]
    
    if sortProp list
    then putStrLn "The list is sorted."
    else putStrLn "The list is not sorted."
