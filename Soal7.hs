{-
buatlah program untuk menampilkan output berikut 
    1. check apakah karakter 'c' merupakan alphabetic Unicode characters
    2. check apakah krakter '4' merupakan ASCII digits
    3. Uppercase karakter 'haskel'
    4. Lowercase karakter 'POLBAN
-}
import Data.Char

main::IO()
main = do
    let char1 = 'c'
    let char2 = '4'
    let str1 = "haskel"
    let str2 = "POLBAN"

    -- 1. check apakah karakter 'c' merupakan alphabetic Unicode characters
    putStrLn ("1. " ++ show (isAlpha char1))
    -- 2. check apakah krakter '4' merupakan ASCII digits
    putStrLn ("2. " ++ show (isDigit char2))
    -- 3. Uppercase karakter 'haskel'
    putStrLn ("3. " ++ map toUpper str1)
    -- 4. Lowercase karakter 'POLBAN
    putStrLn ("4. " ++ map toLower str2)
