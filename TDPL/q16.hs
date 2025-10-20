pascalsTriangle :: Int -> [[Int]]
pascalsTriangle n = take n $ iterate nextRow [1]
  where
    nextRow row = zipWith (+) (0:row) (row++[0])

formatTriangle :: [[Int]] -> String
formatTriangle = unlines . map (unwords . map show)

main :: IO ()
main = do
    putStrLn "Enter the number of rows for Pascal's Triangle:"
    input <- getLine
    let rows = read input :: Int
    putStrLn $ "Pascal's Triangle with " ++ show rows ++ " rows:"
    putStrLn $ formatTriangle (pascalsTriangle rows)
