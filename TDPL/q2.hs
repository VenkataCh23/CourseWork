stack :: [a] -> [a]
stack [] = []         
stack (x:xs) = xs ++ [x]

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4]
    print (stack numbers)