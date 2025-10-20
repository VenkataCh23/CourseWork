import Data.Char (ord, chr)
import Data.List (minimumBy)
import Data.Function (on)

isPrime :: Int -> Bool
isPrime n | n < 2 = False
          | otherwise = all (\x -> n `mod` x /= 0) [2..(floor . sqrt $ fromIntegral n)]

magicalAlphabets :: [Int]
magicalAlphabets = filter isPrime [65..90] ++ filter isPrime [97..122]

nearestMagicalChar :: Char -> Char
nearestMagicalChar c = chr $ minimumBy (compare `on` absDistance) magicalAlphabets
  where
    asciiVal = ord c
    absDistance x = abs (asciiVal - x)

convertToMagicalWord :: String -> String
convertToMagicalWord = map nearestMagicalChar

main :: IO ()
main = do
    putStrLn "Enter the word to be converted to Rosie's Magical Word:"
    input <- getLine
    let magicalWord = convertToMagicalWord input
    putStrLn $ "Rosie's Magical Word: " ++ magicalWord
