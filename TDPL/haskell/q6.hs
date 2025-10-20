data Tree a = Empty
            | Node a (Tree a) (Tree a)

treeHeight :: Tree a -> Int
treeHeight Empty = 0
treeHeight (Node _ left right) = 1 + max (treeHeight left) (treeHeight right)

main :: IO ()
main = do
    let tree = Node 1 (Node 2 Empty (Node 4 Empty Empty)) (Node 3 Empty Empty)
    print (treeHeight tree)
