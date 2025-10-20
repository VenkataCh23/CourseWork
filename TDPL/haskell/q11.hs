myLookup :: Eq a => a -> [(a, b)] -> Maybe b
myLookup _ [] = Nothing
myLookup key ((k, v):xs)
    | key == k  = Just v
    | otherwise = myLookup key xs

main :: IO ()
main = do
    let dict = [(0,'a'),(2,'b'),(2,'c')]
    
    putStrLn "Enter the key to lookup:"
    inputKey <- getLine
    let key = read inputKey :: Int
    
    case myLookup key dict of
        Just value -> putStrLn ("Found: " ++ [value])
        Nothing    -> putStrLn "Key not found."
