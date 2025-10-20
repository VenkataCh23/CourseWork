import Data.List (sort, groupBy)
import Data.Function (on)
import qualified Data.Map as Map

groupAnagrams :: [String] -> [[String]]
groupAnagrams strs = Map.elems $ foldr insertAnagram Map.empty strs
  where
    insertAnagram str = Map.insertWith (++) (sort str) [str]

main :: IO ()
main = do
    putStrLn "Enter the list of words (space-separated):"
    input <- getLine
    let wordsList = words input
    let groupedAnagrams = groupAnagrams wordsList
    putStrLn $ "Grouped anagrams: " ++ show groupedAnagrams
