rotate :: Int -> [a] -> [a]
rotate k xs = drop k' xs ++ take k' xs
  where
    n = length xs
    k' = k `mod` n

main :: IO ()
main = do
    putStrLn "Enter the elements of the list (space-separated):"
    inputList <- getLine
    let list = map read (words inputList) :: [Int]

    putStrLn "Enter the value of K (number of rotations):"
    inputK <- getLine
    let k = read inputK :: Int

    let rotatedList = rotate k list
    putStrLn $ "The rotated list is: " ++ show rotatedList
