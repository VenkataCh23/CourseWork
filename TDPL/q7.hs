data Tree a = Empty
            | Node a (Tree a) (Tree a)
            deriving (Show)

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node _ left right) = 1 + max (treeHeight left) (treeHeight right)

main :: IO ()
main = do
    let tree = Node 'a' (Node 'b' Empty Empty)
                        (Node 'c' (Node 'd' Empty Empty) (Node 'e' Empty Empty))
    
    print (treeHeight tree)
