{-
Diketahui terdapat variable myArray = array (1, 3) [(1, "a"), (2,"b"), (3, "c")]
Buatlah program untuk dapat menampilkan output berikut :
    a.(1,3)
    b. [1,2,3]
    c. ["a","b","c"]
    d. [(1,"a"),(2,"b"),(3,"c")]
-}
import Data.Array

main::IO()
main = do
    let myArray = array (1, 3) [(1, "a"), (2,"b"), (3, "c")]
    -- a.(1,3)
    putStrLn ("a. " ++ show (bounds myArray))
    -- b. [1,2,3]
    putStrLn ("b. " ++ show (indices myArray))
    -- c. ["a","b","c"]
    putStrLn ("c. " ++ show (elems myArray))
    -- d. [(1,"a"),(2,"b"),(3,"c")]
    putStrLn ("d. " ++ show (assocs myArray))
    