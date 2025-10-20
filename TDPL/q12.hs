printNumbers :: IO ()
printNumbers = mapM_ printNumber [1..100]
  where
    printNumber n
      | n `mod` 15 == 0 = putStrLn "NITAndhra"  -- Multiples of both 3 and 5
      | n `mod` 3 == 0  = putStrLn "NIT"        -- Multiples of 3
      | n `mod` 5 == 0  = putStrLn "Andhra"     -- Multiples of 5
      | otherwise       = print n              -- Other numbers

main :: IO ()
main = printNumbers
