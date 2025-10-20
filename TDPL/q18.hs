maxSubArray :: [Int] -> Int
maxSubArray [] = 0  -- Handle case for empty array
maxSubArray nums = snd $ foldl maxSum (0, minBound :: Int) nums
  where
    maxSum (currentSum, maxSum) x = (max 0 (currentSum + x), max maxSum (currentSum + x))

main :: IO ()
main = do
    putStrLn "Enter the list of integers (space-separated):"
    input <- getLine
    let nums = map read (words input) :: [Int]
    let maxSum = maxSubArray nums
    putStrLn $ "Maximum sum of contiguous subarray: " ++ show maxSum
